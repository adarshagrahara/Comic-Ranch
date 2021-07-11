<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--
Author: Colorlib
Author URL: https://colorlib.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="login.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- web font -->
<link
	href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i"
	rel="stylesheet">
<!-- //web font -->
</head>
<body>
<tr>
<td>
<h3>
${message}
</h3>
<h3>
${YAYmessage}
</h3>
</td>
</tr>

	<div class="main-w3layouts wrapper">
	
		<strong><h1>Welcome to Comic Ranch!</h1></strong>
		<br>
		<h1>Login below to get started!</h1>
		<div class="main-agileinfo">
			<div class="agileits-top">
				<form action="Login" method="post">
					<input class="text" type="text" name="username"
						placeholder="Username" required=""> <br>
					<br> <input class="text" type="text" name="name"
						placeholder="Name" required=""> <br> 
						<input
						name="submit" type="submit" value="LOGIN">
				</form>
				
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
	</div>
	<!-- //main -->
</body>
</html>