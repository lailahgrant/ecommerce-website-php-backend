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
        //echo "Connection successfull";
    }
    
    
}

/**
 * Instead of creating this object, going to create a "functions.php" file on the root where objects will be created.
 */
//DBController object
//$db = new DBController();