<?php

    session_start();// session start with user or worker id
    if(isset($_GET['logout'])){
        
        
        session_destroy();
        header('location:index.php');
        
    }

    ?>