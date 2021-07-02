<?php


include 'database_connect.php';

$id=$_POST['id'];
$name=$_POST['name'];
$email=$_POST['email'];
$phone=$_POST['phone'];
$address=$_POST['address'];

 $conn-> query("UPDATE person SET name='".$name."',email='".$email."',phone='".$phone."',address='".$address."' WHERE id='".$id."'");

?>










