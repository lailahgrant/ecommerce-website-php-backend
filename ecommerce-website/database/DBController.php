<?php
class DBController {
    //protected database connection properties
    protected $host = 'localhost';
    protected $user = 'root';
    protected $password = '';
    protected $database = 'electronics';

    //create a constructor to initialize the connection f the database
    //connection property
    public $con = null;
    
    //call constructor
    public function __construct(){
        $this->con = mysqli_connect($this->host, $this->user, $this->password, $this->database);
        if($this->con->connect_error){
            echo "Fail" .$this->con->connect_error;        
        }
        echo "Connection successfull";
    }
    
    
}

//DBController object
$db = new DBController();