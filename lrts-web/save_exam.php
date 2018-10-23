<?php

include 'db_connection.php';

if(isset($_COOKIE["user"])) 
$User= $_COOKIE["user"];

function checkEmpty($para){

    $isEmpty = True;

    if(strlen($para) > 0){
	$isEmpty = False;
    }

    return $isEmpty;
}

if(isset($_POST['submit'])){

$answer="";

$responses = "";

$ones = "1";
$zeros = "0";

#//True positive (Tp)
$words=0.0;

#//False positive (Fp): claiming to know a nonword (wrongly selected as word) is known as FP or false alarm.
$flaseAlarm=0;

#//True  negative (Tn)
$nonwords=0.0;

#//False negative (Fn): not claiming to know a real word is labeled as FN or miss.
$miss=0;

$score=0.0;

$stimuli = array();

if(!empty($_POST['check_list'])){

		foreach($_POST['check_list'] as $selected) {

		//$answer=$answer.",".$selected;

		array_push($stimuli, $selected);//add $selected to $stimuli array

		/* §Array $pieces is from Data.php page§ */
		$pieces = explode("_", $selected);//TBD:like StringTokenizer

		$no= $pieces[0]; // stimulus or item#
		$type= $pieces[1]; // category: w or nw

		if($type == 'w'){
			$words = $words + 1;
		}else{
			$flaseAlarm = $flaseAlarm + 1;
		}

		if(checkEmpty($responses) == True){
			$responses =$ones.",";//For the 1st iteration, TBD:comma , is better than underscore_ 
		}else{
			$responses =$responses.$ones.",";//TBD:comma , is better than underscore _
		}

		//OH:TODO Buggy
 		$answer=$answer.",".$no;
		

		//echo "<script type='text/javascript'>alert('$answer');</script>";

		}//end for

}

//The change by 0260
//$unchecked = str_replace($answer,"",$_POST['questions']);
$unchecked = $_POST['questions'];//get all checkboxes by name


$str = "";
foreach ($stimuli as $value){
$unchecked = str_replace($value, $str, $unchecked);
}

//Change here
$token = strtok($unchecked, ",");

while ($token !== false)
{

//if(token != '') //This is buggy, I also tried this "if(strlen($strTemp) > 0)" and works better
if(strlen($token) > 0)
{
		$pieces = explode("_", $token);//TBD

		$no= $pieces[0]; // stimulus or item #
		$type= $pieces[1]; // w or nw

		if($type == 'n'){
			$nonwords = $nonwords + 1;
		}else{
			$miss = $miss + 1;
		}

		if(checkEmpty($responses) == True){
			$responses =$zeros.",";//For the 1st iteration, TBD:comma , is better than underscore _
		}else{
			$responses =$responses.$zeros.",";//TBD:comma , is better than underscore _
		}

		//OH:TODO Buggy, try if(strlen($answer) > 0)
 		$answer=$answer.",".$no;

}
$token = strtok(",");

}//end while

//append item numbers to students responses
$answer=$answer."==".$responses;

//$answer=$answer.",".$unchecked;

//echo "<script type='text/javascript'>alert('$unchecked');</script>";
 
		//print_r($_POST['check_list']);

$now = new DateTime();

//LRTs equation
$wordAcc = $words/40.0;
$nonwordAcc = $nonwords/20.0;

$score = (($wordAcc + $nonwordAcc)*100.0) / 2.0;

//		$sql = "INSERT INTO  `answers` (`participants_id`, `answer`, `words_correct`, `nw_correct`, `score`, `exam_date`) VALUES ('".$User."','".$answer."',now())";	
$sql = "INSERT INTO  `answers` (`participants_id`, `answer`, `words_correct`, `nw_correct`, `score`, `exam_date`) VALUES ('".$User."','".$answer."','".$words."','".$nonwords."','".$score ."',now())";																						
//$sql = "INSERT INTO `answers` (`participants_id`, `answer`, `words_correct`, `nw_correct`, `score`, `exam_date`) VALUES ('$User','$answer','$words','$nonwords','$score', '$now')";
																		
			mysqli_query($conn, $sql);
		  // echo $sql;
	 
	 
#echo '<td><input type="hidden" name="myscore" value="'.$score.'">'.' </td>';
$_POST['myscore'] = $score;

header("Location:finish.php?myscore=".$score);
//echo '<meta http-equiv="refresh" content="1; URL=finish.php" />';

exit;

}
?>
 