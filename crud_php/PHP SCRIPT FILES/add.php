<?php


include 'database_connect.php';

$name=$_POST['name'];
$email=$_POST['email'];
$phone=$_POST['phone'];
$address=$_POST['address'];

     $conn-> query("INSERT INTO person(name,email,phone,address)VALUES('".$name."','".$email."','".$phone."','".$address."')");
    //$result=array();
    // while($rowData=$query->fetch_assoc()){
    //     $result[]=$rowData;
        
    // }
 
    // echo json_encode($result);
?>










