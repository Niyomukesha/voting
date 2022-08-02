<?php
require("connection.php");
if(isset($_POST['sub'])){
    $names = $_REQUEST['names'];   
    $Uname = $_REQUEST['name'];
    $Password = $_REQUEST['password'];

$querry = "INSERT INTO admin(names, username, password) 
         VALUES('$names', '$Uname', '$Password')";

$qr = mysqli_query($con, $querry);
if($qr){
    echo "Thank you for registering here!";
}
else{
    echo "Oops! something wrong!".mysqli_error($con);
}
}

if(isset($_POST['ret'])){
    $query = "SELECT * FROM admin";
    $re = mysqli_query($con, $query);
    if($re){
        while($row = mysqli_fetch_array($re)){
            echo   "<br/>".$row["id"]. " ".$row['names']. " ".$row['username']." ".$row['password']." |EDIT| "." |DELETE| "." |UPDATE| "."<br/>";
        }
    }
    echo "  ";
 }
?>
<html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Project</title>
        <link rel="stylesheet" href="candidate.css">
    </head>
    
    <body>
        <form method="POST" action="">
    
            <div class="myDiv">
                <h1>add candidate</h1>
                <label>Names</label>
                <input type="text" name="names"></br></br>
                <label>Username</label>
                <input type="text" name="name"></br></br>
                <label>password</label>
                <input type="password" name="password"></br></br>
                <input type="submit" name="sub" value="SignUp"><br>
                <br>
                <input type="submit" name="ret" value="RETRIEVE">
    
            </div>
    
        </form>
    </body>
    
    </html>