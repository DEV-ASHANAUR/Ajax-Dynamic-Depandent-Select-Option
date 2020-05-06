<?php
    class Main{
        protected $host = 'localhost';
        protected $user = 'root';
        protected $pass = '';
        protected $db = 'dynamic_select';

        protected $con;
        protected $sql;
        protected $result;

        public function __construct(){
            if(!isset($this->con)){
                $this->con = new mysqli($this->host,$this->user,$this->pass,$this->db);
                if(!$this->con){
                    echo "connect Error".$this->con->connect_error;
                }
            }
            return $this->con;
        }
        public function show_dis(){
            $this->sql = "SELECT * FROM `district`";
            $this->result = $this->con->query($this->sql);
            if($this->result){
                return $this->result;
            }else{
                return false;
            }
        }
        public function insert($dis,$upz){
            $dis = $dis;
            $upz = $upz;
            $this->sql = "INSERT INTO `tbl_table`(`district`, `upzila`) VALUES ('$dis','$upz')";
            $this->result = $this->con->query($this->sql);
            if($this->result){
                return true;
            }else{
                return false;
            }
        }
        public function upzila($id){
            $id = $id;
            $this->sql = "SELECT * FROM `upzila` WHERE dis_id = '$id'";
            $this->result = $this->con->query($this->sql);
            if($this->result){
                return $this->result;
            }else{
                return false;
            }
        }
        public function __destruct(){
            $this->con->close();
        }
    }
    $obj = new Main();














?>