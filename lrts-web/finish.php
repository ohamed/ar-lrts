
<html>

<head>
<title>Score</title>


<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="//fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
</head>

<body>
<td><input type="hidden" name="myscore" > </td>



<?php

//$cefrScore = $_POST['myscore'];
$cefrScore = $_GET['myscore'];

?>

<div class="main">
<center><img src="images\LTL-Logo.png" alt="Smiley face" height="65" width="680"></center>


<h4 style="   text-align: center;color:#270d73;background: white;width:50%;margin:0 auto;">

<br> <br>
Thank you so much for your kind participation in this study, your score is: &nbsp;

<?php
echo '<b>'.$cefrScore.'</b>';
?>

<br> <br>
<centre><u><a href="index.php">Go to Home</a></u></centre>

<br><br>
We are appreciating your efforts for this volunteer work. Your opinion is highly appreciated, feel free to contact us: <br>
<br>
osama.hamed@uni-due.de

<br>

</h4>
</div>
	
</body>
</html>