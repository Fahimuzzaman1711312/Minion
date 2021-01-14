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
    $userid = $_POST['userid'];
    $username = $_POST['username'];
    $userpassword = $_POST['userpassword'];
    $userphone = $_POST['userphone'];
    $useremail = $_POST['useremail'];
    $useradress = $_POST['useradress'];
    $userage = $_POST['userage'];
    $usergender = $_POST['usergender'];

// inserting values to database
    $sql = "INSERT INTO `users`(`userid`, `username`, `userpassword`, `userphone`, `useremail`, `useradress`, `userage`, `usergender`, `active`) VALUES ('$userid','$username','$userpassword','$userphone','$useremail','$useradress','$userage','$usergender',1)";
    if ($conn->query($sql) === TRUE) {
        header("location:index.php");
        exit();
    } else {
        header("location:usersignup.php?Incorrect= Please Fill Up The Form Correctly");
        exit();
    }
}

$conn->close();
?>