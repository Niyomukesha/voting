 <?php
require("connection.php");
if(isset($_POST['sub'])){
    $Fname = $_REQUEST['name1'];   
    $Lname = $_REQUEST['name2'];
    $Id = $_REQUEST['id'];
    $Email = $_REQUEST['email'];
    $Password = $_REQUEST['password'];

$querry = "INSERT INTO voter(firstname, Lastname, NationalId, email, password) 
         VALUES('$Fname', '$Lname', '$Id', '$Email', '$Password')";

$qr = mysqli_query($con, $querry);
if($qr){
    echo "Thank you for registering here!";
}
else{
    echo "Oops! something wrong!".mysqli_error($con);
}
}

if(isset($_POST['ret'])){
    $query = "SELECT * FROM voter";
    $re = mysqli_query($con, $query);
    if($re){
        while($row = mysqli_fetch_array($re)){
            echo   "<br/>".$row["id"]. " ".$row['firstname']. " ".$row['lastname']." ".$row['nationalId']." ".$row['email']." ".$row['password']."<br/>";
        }
    }
 }
?>

<html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Project</title>
    <link rel="stylesheet" href="signup.css">
</head>

<body>
    <form method="POST" action="">
<div class="myDiv">
            <h1>SignUp</h1>
            <label>Firstname</label>
            <input type="text" placeholder="enter your firstname here" name="name1" required></br></br>
            <label>Lastname</label>
            <input type="text" placeholder="enter your lastname here" name="name2" required></br></br>
            <label>National_ID</label>
            <input type="text" placeholder="enter your id here" name="id" required></br></br>
            <label>E-mail</label>
            <input type="text" placeholder="enter your email here" name="email" required></br></br>
            <label>password</label>
            <input type="password" placeholder="enter your password here" name="password" required></br></br>
            <input type="submit" name="sub" value="SignUp">
            <input type="submit" name="ret" value="RETRIEVE">

        </div>

    </form>
</body>

</html>