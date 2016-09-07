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
				if(a<3){
				document.getElementById("status"+uid).className="alert alert-success ";
				document.getElementById("status"+uid).innerHTML="<strong>Hurry up!</strong> This mentor is available";
				document.getElementById("button"+uid).style.visibility="visible";
				document.getElementById("status"+uid).style.visibility="visible";

				}
				else
				{
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
