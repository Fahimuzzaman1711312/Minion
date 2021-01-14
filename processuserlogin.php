<?php
// creating session
session_start();
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "workerreview";



// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


if(isset($_POST['userid'])){
    
    $uname=$_POST['userid'];
    $password=$_POST['userpassword']; 
	$sql="select * from users where userid='".$uname."'AND userpassword='".$password."' limit 1"; //verifying password
   
 $result=mysqli_query($conn, $sql);
    //creating session by user id
    if(mysqli_num_rows($result)==1){
        
        $_SESSION['userid']=$_POST['userid'];
        header("location:user.php");
        exit();
    }
    else{
   
        header("location:usersignin.php?Incorrect= You entered wrong credentials, Try again");
        exit();
    }
        
}
?>