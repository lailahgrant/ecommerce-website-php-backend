<?php

//require MySQLi connection
require ("database/DBController.php");

//require Product class
require("database/Product.php");
 
//require cart
require("database/Cart.php"); 


//DBController object
$db = new DBController();


//Product obj
$product = new Product($db);
//print_r($product->getData());
$product->getData();



//create object of Cart 
$Cart = new Cart($db);
$arr = array(
    'user_id' => 1,
    'item_id' => 2
);
$Cart->insertintoCart();