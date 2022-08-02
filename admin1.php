<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="adminn.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
</head>
<body>


 <div class="nav">
<h4>ONLINE VOTING SYSTEM</h4>
    <div class="add1">
        <input type="submit" name="clients" value="home">
    </div>
    <div class="add1">
        <input type="submit" name="food" value="about">
    </div>
    <div class="add1">
    <input type="submit" name="drinks" value="candidates">
    </div>
    
 </div>
    <div class="cont">

        <div class="menu">
            <a href="admin.php"><div class="add">
                <input type="submit" id="student" name="candidate" value="addCandidate">
            </div></a>
            <br>
            <a href="voter.php"><div class="add">
                <input type="submit" id="teacher" name="voter" value="addVoter">
            </div></a><br>

            <a href=""><div class="add">
                <input type="submit" name="out" value="OUT">
            </div><br></a>
        </div>
        <div  id="monitor" class="monitor">
        </div>

        
    </div>
</body>
</html>