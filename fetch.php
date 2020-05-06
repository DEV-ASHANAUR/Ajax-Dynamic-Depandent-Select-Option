<?php
    include 'Main.php';
    $obj = new Main();
    if(!empty($_POST['district'])){
        $district = $_POST['district'];
        $value = $obj->upzila($district);

        if($value->num_rows>0){
            while($roww = $value->fetch_assoc()){
                echo '<option value="'.$roww['up_id'].'">'.$roww['upzila_name'].'</option>';
            }
        }else{
            echo '<option value="">State not available</option>';
        }
    }






?>