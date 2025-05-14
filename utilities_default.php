<?php
// User.login
ini_set('display_errors', 1);
error_reporting(E_ALL);
session_start();
$params = session_get_cookie_params();
setcookie("PHPSESSID", session_id(), 0, $params["path"], $params["domain"],
    true, 
    true 
);

include_once("libs/dbfunctions.php");

include('class/users.php');


$op = $_REQUEST['op'];  
// var_dump($op);
//user.register
//$op =  $dbobject->DecryptData("pacific",$op);
$operation  = array();
$operation = explode(".", $op);


// getting data for the class method
$params = array();
$params = $_REQUEST;
$data = [$params];


//////////////////////////////
/// callling the method of  the class
$foo = new $operation[0];
echo call_user_func_array(array($foo, trim($operation[1])), $data);
//}else
//{
//	echo "invalid token";
//}