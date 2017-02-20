<?php
session_start();
//echo phpinfo();

$active = 0;
$config = array(
//    "baseUrl" => "http://rentaware-uzk1.temp-dns.com/dev/"
   "baseUrl" => "http://localhost/rnt/",
    "paths" => array(
        "resources" => "/path/to/resources",
        "images" => array(
            "content" => $_SERVER["DOCUMENT_ROOT"] . "/images/content",
            "layout" => $_SERVER["DOCUMENT_ROOT"] . "/images/layout"
        )
    )
);


defined("ROOT_URL")
or define("ROOT_URL", $config['baseUrl']);

defined("LIBRARY_PATH")
or define("LIBRARY_PATH", realpath(dirname(__FILE__) . '/library'));

defined("ROOT_PATH")
or define("ROOT_PATH", $_SERVER['DOCUMENT_ROOT'].'/dev/');


defined("BASE_PATH")
or define("BASE_PATH", realpath(dirname(__FILE__)));

defined("TEMPLATES_PATH")
or define("TEMPLATES_PATH", realpath(dirname(__FILE__) . '/templates'));


define("loginFirst", "Please login first!");


ini_set("error_reporting", 1);
error_reporting(E_ALL|E_STRCT);




class Database
{   
    private $host = "localhost";
    private $db_name = "rentaware";
    private $username = "root";
    private $password = "";

//    private $host = "localhost";
//    private $db_name = "rentawar_rentdb";
//    private $username = "rentawar_rentusr";
//    private $password = "Zaq!Xsw@cde3";



   public $conn;
     
    public function dbConnection()
	{
     
	    $this->conn = null;    
        try
		{
            $this->conn = new PDO("mysql:host=" . $this->host . ";dbname=" . $this->db_name, $this->username, $this->password);
			$this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);	
        }
		catch(PDOException $exception)
		{
            echo "Connection error: " . $exception->getMessage();
        }
         
        return $this->conn;
    }
}
?>