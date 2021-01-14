<?php
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


if(isset($_POST['workerid'])){
    
    $uname=$_POST['workerid'];
    $password=$_POST['workerpassword'];
	
  $sql="SELECT * FROM `worker` WHERE workerid = '$uname' AND workerpassword = '$password' limit 1";// chaking from database
    
    $result=mysqli_query($conn, $sql);
    //creating session by worker id
    if(mysqli_num_rows($result)==1){
        
        $_SESSION['workerid']=$_POST['workerid'];
        header("location:worker.php");
        exit();
    }
    else{

        header("location:workersignin.php?Incorrect= You entered Wrong Credentials, Try again");
        exit();
    }
        
}
?>