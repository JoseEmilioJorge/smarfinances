<?php

date_default_timezone_set('America/Santo_Domingo');

define('DB_SERVER','localhost');
define('DB_NAME','smartfinances');
define('DB_USER','root');
define('DB_PASS','');

///////////////////////////////
global $con;
$con = new mysqli("localhost", "root", "", "smartfinances");
//$conn = mysql_connect(DB_SERVER,DB_USER,DB_PASS);


 ?>
