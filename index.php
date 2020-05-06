<?php
    include 'Main.php';
    $obj = new Main();
    $dis = $obj->show_dis();
    

    

?>


<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Ajax Dynamic Depandent Select Option</title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="css/style.css" />
    </head>
    <body>
        <div class="container">
            <h2 class="text-center mt-5 text-primary">Ajax Dynamic Depandent Select Option</h2>
            <form action="insert.php" method="post">
                <div class="row mt-3">
                    <div class="col-md-5 m-auto">
                        <select class="form-control" name="district" id="district" required>
                            <option value="" selected>Select District</option>
                            <?php
                                if($dis->num_rows>0){
                                    while($row = $dis->fetch_object()){
                                        ?>
                                        
                                        <option value="<?php echo $row->id;?>"><?php echo $row->name;?></option>
                                        <?php
                                    }
                                }
                            ?>
                        </select>
                        <select class="form-control mt-2" name="upzila" id="upzila" required>
                            <option value="">Select District first</option>
                        </select>
                        <input type="submit" class="btn btn-success mt-3" name="submit">
                    </div>
                </div>
            </form>
        </div>






        <!-- js code here -->
        <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.bundle.min.js"></script>
        <script>
            $(document).ready(function(){
                $('#district').on('change',function(){
                    var districtName = $(this).val();
                    //alert(districtName);
                    if(districtName){
                        $.ajax({
                            type:'POST',
                            url:'fetch.php',
                            data:'district='+districtName,
					       
                            success:function(html){
                                $('#upzila').html(html);
                                console.log(html);
                            }
                        });
                    }else{
                        $('#upzila').html('<option value="">Select District first</option>');
                    }
                });
            });
        
        </script>

    </body>
</html>