<?php
class DBController {
    //protected database connection properties
    // protected $host = 'localhost';
    // protected $user = 'root';
    // protected $password = '';
    // protected $database = 'electronics';
    
    
    //Get Heroku ClearDB connection information
    $cleardb_url = parse_url(getenv("CLEARDB_DATABASE_URL"));
    $cleardb_server = $cleardb_url["host"];
    $cleardb_username = $cleardb_url["user"];
    $cleardb_password = $cleardb_url["pass"];
    $cleardb_db = substr($cleardb_url["path"],1);
    $active_group = 'default';
    $query_builder = TRUE;
// Connect to DB



    //create a constructor to initialize the connection f the database
    //connection property
    //public $con = null;
    
    
    //call constructor
    public function __construct(){
        //$this->con = mysqli_connect($this->host, $this->user, $this->password, $this->database);
        $conn = mysqli_connect($cleardb_server, $cleardb_username, $cleardb_password, $cleardb_db);
       /* if($this->con->connect_error){
            echo "Fail" .$this->con->connect_error;        
        }*/
        //echo "Connection successfull";
    }
    

    public function __destruct(){
    $this->closeConnection();
    }

    //method for closing MySQL connection
    protected function closeConnection(){ //fn destructure
    if($this->con != null){
        $this->con->close();
        $this->con = null;
    }
}
    
} //close of class



/**
 * Instead of creating this object, going to create a "functions.php" file on the root where objects will be created.
 */
//DBController object
//$db = new DBController();