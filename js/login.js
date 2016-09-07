function login(username,password) {
    
    if(username.length==0 || password.length==0)
	{	
		bootbox.alert("Username or Password too short.")	;
		return;
	}
	/*else if(username[6]!="6")
	{
		bootbox.alert("not for you :p");
		return;
	}*/
	else {
		var xmlhttp= new XMLHttpRequest();
		xmlhttp.onreadystatechange=function(){
			if(xmlhttp.readyState==4 && xmlhttp.status==200){
				var x =xmlhttp.responseText;

				if(x!="invalid credentials")
				window.location="logincheck.php";
				else
									bootbox.alert(x);


				
			}
		}
		xmlhttp.open("POST","https://geekhaven.iiita.ac.in/mentor/check.php",true);
		xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

		xmlhttp.send("roll="+username+"&pass="+password);
	}


}
