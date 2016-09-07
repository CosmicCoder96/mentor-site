<?php
$servername = "localhost";
$username = "geekhavendba";
$password = "Geek@2016";
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
$uid=$_POST['uid'];
$name =$_POST['name'];
$sroll = $_POST['sroll'];
$initial = "select count(*) from students where rollnum = '".$sroll."'";
$sql_result = $conn->prepare($initial);
$sql_result->execute();
$numRows = $sql_result->fetchColumn();



if($numRows==0){
$try = "select count from mentors where rollnum='".$uid."'";
$sql_result = $conn->prepare($try);
$sql_result->execute();
$row = $sql_result->fetch();
$count = $row['count'];
if($count<=3)
{
	$try2 = "update mentors set count = count + 1,student".$count."r = '".$sroll."',student".$count."n = '".$name."' where rollnum='".$uid."'";
	$sql_result2=$conn->prepare($try2);
	$sql_result2->execute();

	$try3 = "insert into students(rollnum,mentor) values('".$sroll."','".$uid."')";
	$sql_result= $conn->prepare($try3);
	$sql_result->execute();
	$initial = "select count(*) from students where rollnum = '".$sroll."'";

	$sql_result4 = $conn->prepare($initial);
	$sql_result4->execute();
	$numRows2 = $sql_result4->fetchColumn();
	
	echo $numRows2;
	

}
else
{
	echo "-1";
}
}
else
{
	echo "0";
}


//echo $row['rollnum'];

?>
