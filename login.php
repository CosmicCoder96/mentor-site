<?php
	session_start();
	if(isset($_SESSION['user']))
	
	{
		header("Location: logincheck.php");
	}
	?>
<html>
<head>


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.1.0.min.js" integrity="sha256-cCueBR6CsyA4/9szpPfrX3s49M9vUU5BgtiJj06wt/s=" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	<script src = "js/bootbox.js"></script>
<script src="https://use.fontawesome.com/994d7c72ea.js"></script>

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
					
					<li><a href = "#">Login</a></li>
				</div>
			</div>
		</div>
	</nav>
	<a href = "#" id ="ready">data-toggle="modal" data-target="#myModal2"></a>
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
        <h4 class="modal-title" id="myModalLabel">Contact info:</h4>
      </div>
      <div class="modal-body">
        	<img src="image.jpg">
			
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<div class="form-horizontal">
	<div class = "col-lg-6">
  		<div class="form-group">
				<label for="roll" class="col-sm-2 control-label">Roll Number:</label>
    			<div class="col-sm-10">
				<input id="roll" class = "form-control" name = "roll" type="text">
				</div>
		</div>
  		<div class = "form-group">

    			<label for="pass" class="col-sm-2 control-label">Password</label>
    			<div class="col-sm-10">
				<input id="pass" class = "form-control"  name ="pass" type="password">
				</div>
		</div>
		<div class = "form-group">
    	<div class="col-sm-offset-2 col-sm-10">
			<button class = "btn btn-default" onclick="login(roll.value,pass.value)">login</button></form>
		</div>
	</div>
</div>

<script src = "js/login.js"></script>
</body>
<script>
$(document).ready(function(){
	documentBy.getElementById("wiljdjaskldjlkas")
})
</script>
</html>
