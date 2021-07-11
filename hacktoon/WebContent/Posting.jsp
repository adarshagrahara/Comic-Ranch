
<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<link rel="stylesheet" href="Posting.css">
<link rel="stylesheet" href="backround.css">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
	
</script>
<head>

<script>

<%String name = (String)request.getAttribute("myname");

String thename = (String)request.getAttribute("thename");

System.out.println("The name on the jsp page is "+name);%>

var nAme = "<%=name%>";
var naMe = "<%=thename%>";



	function init() {
		
		if(nAme == null){
			
			var myMsg = naMe;
		    showMessage(myMsg);
			
		} else{
			
			var myMsg = nAme;
		    showMessage(myMsg);
			
		}
	    
	  
	}
	function showMessage(myMsg) {
	  var greeting = myMsg;
	  document.getElementById ("myName").innerHTML = greeting;
	}
	document.addEventListener('readystatechange', function() {
	  if (document.readyState === "complete") {
	    init();
	  }
	});
	
	
	





//******************************************************************************************888

function getChats(){
	
	var delayInMilliseconds = 1000;
	
	var ajaxRequest = new XMLHttpRequest();
	ajaxRequest.onreadystatechange = function(){
	
		if(ajaxRequest.readyState == 4){
			//the request is completed, now check its status
			if(ajaxRequest.status == 200){
				document.getElementById("chats").innerHTML = ajaxRequest.responseText;
			}
			else{
				console.log("Status error: " + ajaxRequest.status);
			}
		}
		else{
			console.log("Ignored readyState: " + ajaxRequest.readyState);
		}
	}
	ajaxRequest.open('get', 'Posting');
	ajaxRequest.send();
	
	//refresh the chats in one second
	setTimeout(getChats, 1000);
}


	//************************************************************************

	// Get the modal
	var modal = document.getElementById("myModal");

	// Get the button that opens the modal
	var btn = document.getElementById("myBtn");

	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[0];

	// When the user clicks on the button, open the modal 
	btn.onclick = function() {
		modal.style.display = "block";
	}

	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
		modal.style.display = "none";
	}

	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
		if (event.target == modal) {
			modal.style.display = "none";
		}
	}

	//**********************************************************************

	
	
</script>
</head>

<body onload="getChats()">
	<nav class="navbar navbar-inverse  navbar-fixed-top" role="navigation">

		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>

			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#"><span
							class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a></li>
					


					<li><a data-toggle="modal" data-target="#myModal"> <span
							class="glyphicon glyphicon-plus"></span> Create
					</a></li>


				</ul>



				<ul class="nav navbar-nav navbar-right">
					<li><a href="login.jsp"><span
							class="glyphicon glyphicon-log-out"></span> Log-out</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><span class="glyphicon glyphicon-user"></span>
							Logged in as <span id="myName"></span></a></li>
				</ul>


			</div>
		</div>
	</nav>
	<div id="myModal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
			<form action="UploadServlet" method="post"
					enctype="multipart/form-data" id="form2">
					<input type="file" name="file" /> <br /><a target="_blank"><input
						type="submit" value="Upload File" /></a>
				</form>
				<form action="Posting" method="post" id="form1">
					<div class="modal-body">

						<div class="form-group">
							<label for="title">Title of Cartoon</label> <input name="title"
								type="text" class="form-control" id="title" placeholder="Title">
						</div>
						<div class="form-group">
							<label for="description">Description of Cartoon</label> <input
								name="description" type="text" class="form-control"
								id="description" placeholder="Description">
						</div>

					</div>


					<div
						class="modal-footer border-top-0 d-flex justify-content-center">
						<button value="send" type="submit" class="btn btn-success">Post!</button>
					</div>
				</form>
			</div>
		</div>
	</div>




	<div class="container">

		<div class="col-md-7">

			<div class="social-feed-box">
				<div id="chats">
					<div class="media-body">

						<br> <br> <br> <a href="#">UserName</a> <br> <strong
							style="color: black;" class="text-muted">Title</strong>
					</div>

					<div class="social-body">
						<p>Description</p>
						<img src="https://via.placeholder.com/650x280/FFB6C1/000000"
							class="img-responsive">
						<div class="btn-group">
							<button class="btn btn-white btn-xs">
								<i class="fa fa-thumbs-up"></i> Like this!
							</button>
							<button class="btn btn-white btn-xs">
								<i class="fa fa-comments"></i> Comment
							</button>
							<button class="btn btn-white btn-xs">
								<i class="fa fa-share"></i> Share
							</button>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>

<ul class="colorlib-bubbles">
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>


</body>
</html>