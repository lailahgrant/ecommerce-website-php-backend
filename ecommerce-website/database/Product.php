<?php

//Use to fetch product data
class Product{
    public $db = null; //use this property to access the connection variable

    public function __construct(DBController $db){ //from DBController class - now like an objct to access $con
        //use Dependency Injection to access $con connection
        if(!isset($db->con)) return null;
        //call public $db and initialize it to the $db in __construct(DB... $db)
        $this->db = $db;
    }


    //fetch product data using getData  method
    // public function getData(){
    //     $this->db->con->query("SELECT * FROM product"); //pass the SQL query
    // }
    public function getData($table= 'product'){
       $result =  $this->db->con->query("SELECT * FROM {$table}");
       $resultArray = array();

       //while loop - get associative array(key-value) 
       //it  fetches product one by one
       while($item = mysqli_fetch_array($result, MYSQLI_ASSOC)){
           $resultArray[] = $item;
       }
       
       return $resultArray;
    }

}