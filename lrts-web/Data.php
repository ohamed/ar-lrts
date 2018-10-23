<?php
 include 'db_connection.php';

	
$check = array();
										
$email='';
$Professional='';
$Experience='';
$Age='';
$gender='';
$orguiv='';
$day='';



if(isset($_COOKIE["user"])) {
$User= $_COOKIE["user"];

}
//else

	if(isset($_POST['submit'])){
if(isset($_POST['Email'])){$email=$_POST['Email'];}
if(isset($_POST['Professional'])){$Professional=$_POST['Professional'];}
if(isset($_POST['Experience'])){$Experience=$_POST['Experience'];}
if(isset($_POST['Linked-in'])){$Age=$_POST['Linked-in'];}
if(isset($_POST['gender'])){$gender=$_POST['gender'];}
if(isset($_POST['org-uiv'])){$orguiv=$_POST['org-uiv'];}
if(isset($_POST['day'])){$day=$_POST['day'];}


  

$stmt =  $conn->prepare("INSERT INTO `participants`( `email`,`experience`, `gender`, `current_occupation`, `org/univ`, `age`,`day_birth`) 
VALUES (?,?,?,?,?,?,?)");
 
	$stmt->bind_param( "sssssss",$email,$Experience,$gender,$Professional,$orguiv,$Age,$day);
    mysqli_stmt_execute($stmt);

$Last_Id=mysqli_insert_id($conn);

$test="";
$sort="";

if($day >= 1 && $day <= 10){

$test ='1';
$sort=" ";


}else if($day >= 11 && $day <= 20){

$test ='2';
$sort=" order by id desc ";


}else{

$test ='3';
$sort=" ";

}

	$sql = "select id,word,category from exam where test='".$test."'".$sort;
$query = mysqli_query($conn, $sql);


setcookie("user", $Last_Id, time() + (86400 * 60), "/"); // 86400 = 1 day

$User=$Last_Id;
}else{
header("Location:index.php");
}




?>

							

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
<title>Arabic Lexical Recognition Tests (LRTs)</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="//fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">



<script>
function validateForm() {
/*
var Positive=document.getElementById("Positive").checked;
var Negative=document.getElementById("Negative").checked;
var Neutral=document.getElementById("Neutral").checked;
var Performance=document.getElementById("Performance").checked;
var Security=document.getElementById("Security").checked;
var Usability=document.getElementById("Usability").checked;
var Bug=document.getElementById("Bug").checked;
var Feature=document.getElementById("Feature").checked;
var high=document.getElementById("high").checked;
var medium=document.getElementById("medium").checked;
var low=document.getElementById("low").checked;


if ((Positive||Negative||Neutral||Performance||Security||Bug||Feature||Usability)&& !(high||medium||low)){
        alert("Please check Your Confidence");
        return false;
}
*/

}





</script>




</head>
<body>


	<div class="main">

			<center><img src="images\LTL-Logo.png" alt="Smiley face" height="65" width="680"></center>

		<div class="w3_agile_main_grids">

			<div class="agileits_w3layouts_main_grid">

		
					<div class="agile_main_grid_left">
						<div class="w3_agileits_main_grid_left_grid">
						<div class="agileits_main_grid_left_l_grids">


<tabel>
<tr>
<td>							
<p>
فيما يلي قائمة تحتوي على ستين عنصر، وظيفتك هي تحديد اي من هذه العناصر كلمات عربية و ايها لا. لذلك  يرجى وضع علامة في المربع بجانب العنصر الذي تعتقد انه كلمة موجودة في اللغة العربية، و ترك المربع فارغ في حال كان هذا العنصر غير موجود في اللغة العربية ككلمة‪.‬
<p>
</td>
</tr>							
<br>

<tr>
<td>							
<p>
Below is a list containing consists of about 60 trial items, in each of which you will see a string of Arabic letters. Your task is to decide whether this is an existing Arabic word or not. If you think it is an existing Arabic word, you have to check the box next to the item, and if you think it is not an existing Arabic word, you leave the box blank.
<p>
</br>
</tr>
</tabel>
						<h3>Arabic LRT as checklist format.</h3>



<form name="myForm" action="save_exam.php"  method="post" >


						
							<div class="w3_agileits_main_grid_left_l">
								<h4>Please select the checkbox next to all the words that you know. </h4>
							<br>
							</div>


							<div class="w3_agileits_main_grid_left_r">
<table style="width:  100%;">  
<?php
$data="";

//Nadeem change:1 line
$array="";

$htmlCtrl=1;

while($data = mysqli_fetch_array($query))
{

#//TBRemoved: echo '<td><input type="checkbox" name="check_list[]" value="'.$data["id"].'">'. $data["word"].' </td>';
//Nadeem change:1 line. #OH: To be changed

//category is a word or nonword

$array=$array.",".$data["id"].'_'.$data["category"];

if($htmlCtrl%2==1){
echo '<tr> <td><input type="checkbox" name="check_list[]" value="'.$data["id"].'_'.$data["category"].'"> &nbsp;'. $data["word"].' </td>';
}else{
echo '<td><input type="checkbox" name="check_list[]" value="'.$data["id"].'_'.$data["category"].'"> &nbsp;'. $data["word"].' </td></tr>';
}
$htmlCtrl++;
}

//Nadeem change:1 line
echo '<td><input type="hidden" name="questions" value="'.$array.'">'.' </td>';
?> 



</table>
							</div>
							
		<br>					
		<input type="submit" name="submit" Value="Submit"/>					
	
				
</form>
						</div>


						</div>
						<div class="w3_agileits_main_grid_left_r">
										<div class="clear">	</div>		


						</div>

					</div>		


								

					
					<div class="clear"> </div>
					
			</div>
		</div>

		<div class="agileits_copyright">
		</div>
	</div>


</body>
</html>