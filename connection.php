<?php
$server = "localhost";
$user = "root";
$pass = "";
$db = "voting";


$con = mysqli_connect($server, $user, $pass, $db);

if($con){
    echo "congulaturation";
    
}
else{
    echo "failed" .mysqli_connect($con);
}

?>