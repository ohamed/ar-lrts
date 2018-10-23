<?php

include 'db_connection.php';

$sql = "SELECT count(participants_id) as res_count FROM answers";

$query = mysqli_query($conn, $sql);

//$num_rows = mysqli_num_rows($query);

$row = mysqli_fetch_array($query);

$num_rows = $row[0];

//Females and males
$sqlFemale = "SELECT count(gender) FROM participants where gender = 'Feale'";
$query = mysqli_query($conn, $sqlFemale);
$row = mysqli_fetch_array($query);
$num_of_females = $row[0];

$num_of_males = $num_rows - $num_of_females;


?>


<table style="width:  30%;">

<tr>
<td>
The total number of responses is: 
</td>


<td style="width:  10%;">
<?php
echo '<b>'.$num_rows.'</b>';
?>
</td>
</tr>

<tr>
<td>
The total number of females is: 
</td>


<td style="width:  10%;">
<?php
echo '<b>'.$num_of_females.'</b>';
?>
</td>
</tr>

<tr>
<td>
The total number of males is: 
</td>


<td style="width:  10%;">
<?php
echo '<b>'.$num_of_males.'</b>';
?>
</td>
</tr>


</table>