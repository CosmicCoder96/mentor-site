<?php
$servername = "localhost";
$username = "geekhavendba";
$password = "Geek@2016";
//$dbname = "mentor";
$dbname = "geekhavendb";

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	
	//echo"connection succesful";	
  
    }
catch(PDOException $e)
    {
    echo "Connection failed: ";
    }

$uid=$_GET['uid'];
$try = "select count from mentors where rollnum = '".$uid."'";
$sql_result = $conn->prepare($try);
$sql_result->execute();
$row = $sql_result->fetch();


echo $row['count'];
?>

