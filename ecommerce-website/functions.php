<?php

//require MySQLi connection
require ("database/DBController.php");

//require Product class
require("database/Product.php");
 
//DBController object
$db = new DBController();


//Product obj
$product = new Product($db);
//print_r($product->getData());
$product->getData();