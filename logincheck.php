<?php

session_start();

/*

function chk_user( $uid, $pwd ) {

		if ($pwd) {
			$ds = ldap_connect("172.31.1.42");
			ldap_set_option($ds, LDAP_OPT_PROTOCOL_VERSION, 3);
			$a = ldap_search($ds, "dc=iiita,dc=ac,dc=in", "uid=$uid" );
			$b = ldap_get_entries( $ds, $a );
			$dn = $b[0]["dn"];
			$ldapbind=@ldap_bind($ds, $dn, $pwd);
			if ($ldapbind) {
				return 1;
			} else {
				return 0;
			}
			ldap_close($ds);
		} else {
			return 0;
		}
	}
		
	function get_name($uid) {
		$ds=ldap_connect("172.31.1.42");
		

		ldap_set_option($ds, LDAP_OPT_PROTOCOL_VERSION, 3);
		if ($ds)
		{
			$bnd=ldap_bind($ds);
			$srch=ldap_search($ds, "dc=iiita,dc=ac,dc=in", "uid={$uid}");
			$info=ldap_get_entries($ds, $srch);
			ldap_close($ds);

			$userdn=$info[0]["dn"];
			$usernm=$info[0]["cn"][0];

			return $info[0]["cn"][0];
		} else {
			return "Not available";
		}
	}
	$user=$_POST['roll'];
	$pass=$_POST['pass'];
	//echo $user;
	$true=chk_user($user, $pass);     
	$data = "";
	
	if($true){
	
		$name=get_name($user);
		$arr = explode("-",$name);
		$fname1=substr($name, 0, strrpos($name, "-"));
		$fname=str_replace("-", " ", $fname1);
		$_SESSION['name']=$name;
		$_SESSION['fname']=$fname;
		$new="";
		
	
		$data = $user;
		
	}
	else{
		$data = "invalid credentials";
		//header("Location: r.html");
	}*/

	
	//echo $data;
	$fname=$_SESSION['fname'];
	$user=$_SESSION['user'];
	if($user=="")
	{
		header("Location: login.php");
	}

?>
<html>
<head>
	<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.1.0.min.js" integrity="sha256-cCueBR6CsyA4/9szpPfrX3s49M9vUU5BgtiJj06wt/s=" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="https://use.fontawesome.com/994d7c72ea.js"></script>
	<script src = "js/bootbox.js"></script>
	<style>
	.box
	{
		border: 2px solid black;
		margin:2%;
		height:140vh;
	}
	.btn-success
	{
		background-color: transparent;
	 	color:green;
	}
	.btn-info
	{
		visibility:hidden;
	}
	.alert
	{
		visibility: hidden;
	}
	#hide
	{
		visibility:hidden;
	}
	body
	{

	}
	
</style>
</head>
<body>
	<nav class = "navbar navbar-default">
		<div class = "container">
			<div class = "navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs123" aria-expanded="false">
			        <span class="sr-only">Toggle navigation</span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			     </button>
				<a href = "#" class = "navbar-brand"> GeekHaven</a>
			</div>
			<div class = "collapse navbar-collapse" id="bs123">

				<div class = "nav navbar-nav">
					<li><a href = "https://www.facebook.com/geekhaveniiita/?fref=ts" target="_blank">About</a></li>
					<li><a href = "#" data-toggle="modal" data-target="#myModal">Contact</a></li>
				</div>
				<div class = "nav navbar-nav navbar-right">
					
					<li><a href = "logout.php">Logout</a></li>
				</div>
			</div>
		</div>
	</nav>
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Contact info:</h4>
      </div>
      <div class="modal-body">
        
	<p>Abhishek Deora : Overall Coordinator, GeekHaven<br>
	Phone: 8756227275  &nbsp; <a href = "https://www.facebook.com/abhishek.deora.5" target="_blank"><i class="fa fa-facebook-square" aria-hidden="true" width ="30px" height = "30px"></i></a>
	<br></p>
	
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Easter egg</h4>
      </div>
      <div class="modal-body">
        
		<img src = "image.jpg" width = "400px" height = "400px">
	
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<a href = "#" data-toggle="modal" class = "btn btn-success" data-target="#myModal2">click me</a>
	<?php
	echo "<div class = 'container'>";
	echo "<h1>Welcome ".$fname."</h1>";
	$servername = "localhost";
	$username = "geekhavendba";
	$password = "Geek@2016";
	//$dbname = "mentor";
	$dbname="geekhavendb";
	try {
   	 $conn = new PDO("mysql:host=$servername;dbname=$dbname", 		 $username, $password);
    // set the PDO error mode to exception
   	 $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	
	//echo"connection succesful";	
  
    }
catch(PDOException $e)
    {
    echo "Connection failed: ";
    }
	//echo $new;
   	$try = "select rollnum,name  from mentors order by wing";
	$sql_result = $conn->prepare($try);
	$sql_result->execute();
	$rows = $sql_result->fetchALL(PDO::FETCH_ASSOC);
	$i=32;

	foreach ($rows as $row) {
		
			

		
	  if($i==32)
		{	
			
			echo"<div id = 'hide'>";
			echo "<h1>You must be smart</h1>";
			echo"<div class = 'col-lg-6 box'>";
			echo"<h2>The overall coordinators</h2>";

			

		}
		else if ($i==36)
		{
			echo "</div>";
			echo"<div class = 'col-lg-3 box'>";
			echo "<h1>WebD</h1>";
			
		}
			else if ($i==39)
		{
			echo "</div>";
			echo"<div class = 'col-lg-3 box'>";
			echo "<h1>FOSS</h1>";
			
		}
			else if ($i==43)
		{
			echo "</div>";
			echo"<div class = 'col-lg-3 box'>";
			echo "<h1>AppD</h1>";
			
		}
			else if ($i==46)
		{
			echo "</div>";
			echo"<div class = 'col-lg-3 box'>";
			echo "<h1>Networking</h1>";
			
		}
			else if ($i==49)
		{
			echo "</div>";
			echo"<div class = 'col-lg-3 box'>";
			echo "<h1>Competetive Coding</h1>";			
		}
			else if ($i==52)
		{
			echo "</div>";
			echo"<div class = 'col-lg-3 box'>";
			echo "<h1>Tesla</h1>";
			
		}
			else if ($i==57)
		{
			echo "</div>";
			echo"<div class = 'col-lg-3 box'>";
			echo "<h1>Graphics</h1>";
			
		}
		else if($i==61)
		{
			echo"</div>";
			echo"</div>";
		}

		else
		{
			$i=$i;
		}

	
	echo $row['name'].": <br> <input type = 'button' class='btn btn-success' onclick = 'validate(\"".$row['rollnum']."\")' value='check avaialability'>

<input type = 'button' class='btn btn-info' id = 'button".$row['rollnum']."'value='select' onclick='sel(\"".$row['rollnum']."\",\"".$row['name']."\")'>
<div class='alert ' role='alert' id = 'status".$row['rollnum']."'>
 
 </div><br>";
$i++;   	

}
echo "</div>";
	?>

<br>

</body>

<script>
	
	function sel(uid,uname)
{	
	bootbox.confirm("Are you sure you want "+uname+" as your mentor?", function(result) {
  	if(result)
  	{
  		var xmlhttp= new XMLHttpRequest();
		xmlhttp.onreadystatechange=function(){
			if(xmlhttp.readyState==4 && xmlhttp.status==200){
				var a = parseInt(xmlhttp.responseText);
				if(a==0)
				{
					
					bootbox.alert("You have already been assigned a mentor. Go away!!");
				}
				 if(a==-1)
				{
					bootbox.alert("Sorry , someone else got the mentor ;)> Check availability again!!");
				}
				 if(a==1)
				{
					bootbox.alert("Congrats! "+ uname+" is your mentor now");
				}

				
			}
		}
		var name = "<?php echo $fname ?>";
		var sroll = "<?php echo $user ?>";
		sroll = sroll.toLowerCase();
		xmlhttp.open("POST","submit.php",true);
		xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		xmlhttp.send("uid="+uid+"&name="+name+"&sroll="+sroll);
		
  	}

}); 
	
}
function validate(uid)
{
//alert(1);
//alert(uid);

var xmlhttp= new XMLHttpRequest();
		xmlhttp.onreadystatechange=function(){
			if(xmlhttp.readyState==4 && xmlhttp.status==200){
				var a = parseInt(xmlhttp.responseText);
				//alert(a);
				if(a<=3){
				document.getElementById("status"+uid).className="alert alert-success ";
				document.getElementById("status"+uid).innerHTML="<strong>Hurry up!</strong> This mentor is available";
				document.getElementById("button"+uid).style.visibility="visible";
				document.getElementById("status"+uid).style.visibility="visible";

				}
				else
				{
					document.getElementById("status"+uid).style.visibility="visible";
				  document.getElementById("status"+uid).className="alert alert-danger ";
				  document.getElementById("status"+uid).innerHTML="Already Taken :(";
				  document.getElementById("button"+uid).style.visibility="hidden";
				  document.getElementById("status"+uid).innerHTML="<strong>Oops!</strong> This mentor is not available:(";
				  
	
				}
				
			}
		}
		xmlhttp.open("GET","status.php?uid="+uid,true);
		xmlhttp.send();
}

</script>

</html>




