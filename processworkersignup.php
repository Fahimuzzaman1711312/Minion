<?php
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


if (isset($_POST['signup'])){
    $workerid = $_POST['workerid'];
    $workername = $_POST['workername'];
    $workerpassword = $_POST['workerpassword'];
    $workerphone = $_POST['workerphone'];
    $workeradress = $_POST['workeradress'];
    $workerage = $_POST['workerage'];
    $workergender = $_POST['workergender'];
    $workerwtype = $_POST['workerwtype'];
    $workerminimumwage = $_POST['workerminimumwage'];



//inserting values to database
    $sql = "INSERT INTO `worker`(`workerid`, `workername`, `workerpassword`, `workerphone`, `workeradress`, `workerage`, `workergender`, `wtype`, `minimumwage`, `active`) VALUES ('$workerid','$workername','$workerpassword','$workerphone','$workeradress','$workerage','$workergender','$workerwtype','$workerminimumwage',1)";
    if ($conn->query($sql) === TRUE) {
        header("location:index.php");
    } else {
        header("location:workersignup.php?Incorrect= Please Fill Up The Form Correctly");
    }
}

$conn->close();
?>