<?php
    include 'Main.php';
    $obj = new Main();

    if(isset($_POST['submit'])){
        $district = $_POST['district'];
        $upzila = $_POST['upzila'];
        $obj->insert($district,$upzila);
        header("location:index.php?success");
    }











?>