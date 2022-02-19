<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login</title>
<style>
body {
	background-image:
		url("https://lh3.googleusercontent.com/jduglP5Nsk3pOdS8g8OsKyIEORM3FGmh993x_cNcbmNfAIJvK2XUtXegiAnLx4Pt6_m6gtFk84P8Wx55Du0WiV2N0MwfFcnQ-NqFLh0=s400");
	background-repeat: no-repeat;
	background-size: 50%;
	background-position: right 80% top 45%;
	background-color: #CACFD2;
}

form {
	max-width: 200px;
	margin: 100px;
	background: rgb(0, 0, 0); /* Fallback color */
	background: rgba(0, 0, 0, 0.3);
	padding: 100px 100px;
	text-align: center;
	margin-left: auto;
}

input[type=text], input[type=password] {
	width: 100%;
	margin: 8px 0;
	padding: 20px 20px;
	display: inline-block;
	border: 2px solid black;
	box-sizing: border-box;
}

button {
	background-color: black;
	width: 100%;
	color: white;
	padding: 15px;
	margin: 10px 0px;
	border: none;
	cursor: pointer;
}

div {
	padding: 100px;
}

* {
	margin: 0;
	padding: 0;
}

header {
	height: 60px;
	background: #EC7063;
	padding: 0 50px;
}

.logo {
	width: 30%;
	float: left;
	color: #fff;
	font-weight: bold;
	text-transform: uppercase;
	line-height: 60px;
	font-size: 35px;
}

nav {
	width: 68%;
	float: right;
}

nav ul {
	list-style: none;
	float: right;
}

nav ul li {
	display: inline-block;
}

nav ul li a {
	text-decoration: none;
	color: #fff;
	font-family: sans-serif;
	font-weight: bold;
	margin: 0 10px;
	line-height: 60px;
	text-transform: uppercase;
}

.banner {
	height: 100%;
}

.banner img {
	width: 100%;
	height: 90vh;
}

.content {
	padding: 5%;
}

.content p {
	font-size: 18px;
	line-height: 1.7;
	font-family: sans-serif;
	margin-bottom: 25px;
}

footer {
	background: #000;
	color: #fff;
	padding: 15px 50px;
	text-align: center;
}

header {
	width: 100%;
	height: 100%;
	padding: 60px;
	text-align: center;
}

.logo {
	width: 100%;
	float: none;
}

nav {
	width: 100%;
	float: none;
}

nav ul li {
	display: block;
}

nav ul {
	float: none;
}
</style>
<script>
	function validate() {
		var email = documnet.f1.email.value;
		var pswd = document.f1.password.value;
		if (user == null || user == "") {
			alert("Enter the username");
		}
		if (pswd == null || pswd == "") {
			alert("Enter the password");
		}
		if (pswd.length < 8) {
			alert("password should be of 8 characters")
		}
		if (user.length < 8) {
			alert("username should be of 8 characters")
		}
	}
</script>
</head>
<body>
	<form action="/login-user" method="post" name="f1" onsubmit="validate()">
		<table align="center">
			<tr>
				<td>Email-ID</td>
			</tr>
			<tr>
				<td><input type="text" placeholder="Enter email-id" name="email" required><br>
				</td>
			</tr>
			<tr>
				<td>Password</td>
			</tr>
			<tr>
				<td><input type="password" placeholder="Enter Password" name="password" required><br></td>
			</tr>
			<tr>
				<td><button type="submit">Login</button>
					<br> <a href="/register"> Don't have an account ? </a>
			</tr>
		</table>
	</form>
</body>
</html>
