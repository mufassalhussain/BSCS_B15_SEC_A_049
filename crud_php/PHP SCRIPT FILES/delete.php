<?php


include 'database_connect.php';

$id=$_POST['id'];

 $conn-> query("DELETE FROM person WHERE id='".$id."'");
    //$result=array();
    // while($rowData=$query->fetch_assoc()){
    //     $result[]=$rowData;
        
    // }
 
    // echo json_encode($result);
?>










