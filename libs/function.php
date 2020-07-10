<?php  
     global $conn;
    function connect_db(){
        global $conn;
        if(!$conn){
            $conn = mysqli_connect('localhost:3306', 'root', '','rog_web') or die ('không thể kết nối tới database');
            mysqli_set_charset($conn,'UTF*');
        }
    }
       
    function disconnect_db(){
        global $conn;
        if($conn){
            mysqli_close($conn);
        }
    }
 
    function show_banner(){
        global $conn;
        connect_db();
        $sql = 'SELECT * FROM banner';
        $query = mysqli_query($conn , $sql);
        $result = array();
        if($query){
         while($row = mysqli_fetch_assoc($query)){
                $result[] = $row;
            }
        }
        return $result;
    }

    function show_slide(){
        global $conn;
        connect_db();
        $sql = 'SELECT * FROM slide';
        $query = mysqli_query( $conn, $sql);
        $result = array();
        if($query){
            while($row = mysqli_fetch_assoc($query)){
                $result[] = $row;
            }
        }
        return $result;
    }
?> 