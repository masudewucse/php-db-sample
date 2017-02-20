<?php
require_once('classess/dbconfig.php');
require_once('classess/class.user.php');


$ob = new USER();

$email = 'masudewucse@gmail.com';

$udetails = $ob->userInfoByEmail($email);

print_r($udetails);
?>


