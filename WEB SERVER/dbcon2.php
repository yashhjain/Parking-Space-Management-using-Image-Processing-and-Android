<?php
include("database.php");
$a = $_POST['string'];
$no = str_split($a);
/*
 $no[0] = $_POST['1'];
 $no[1] = $_POST['2'];
 $no[2] = $_POST['3'];
 $no[3] = $_POST['4'];
 $no[4] = $_POST['5'];
 $no[5] = $_POST['6'];
 $no[6] = $_POST['7'];
 $no[7] = $_POST['8'];
 $no[8] = $_POST['9'];
 echo $no[0];
 */
 echo $no[i];
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
for($i=0;$i<=8;$i++)
{
 $temp = $i+1;
 $sql = "UPDATE demo SET status = '$no[$i]' WHERE park = '$temp'" ;
echo $sql;
if ($conn->query($sql) === TRUE) 
 {
    echo "Record updated successfully";
 } 
else 
 {
    echo "Error updating record: " . $conn->error;
 }
}
?>