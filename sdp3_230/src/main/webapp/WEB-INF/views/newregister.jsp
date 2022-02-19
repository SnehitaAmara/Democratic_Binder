<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Register</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Law Firm Website Template" name="keywords">
<meta content="Law Firm Website Template" name="description">

<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=EB+Garamond:ital,wght@1,600;1,700;1,800&family=Roboto:wght@400;500&display=swap"
	rel="stylesheet">

<!-- CSS Libraries -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link href="lib/animate/animate.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Template Stylesheet -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/welcome.css?ver=1.2.1">
<style>
body {
	background-image:
		url("https://images.squarespace-cdn.com/content/v1/5c98c7424d546e5350d2cf32/1589438471471-24B3O9WEJY67YWIK5XXW/AGILE+%281%29.png?format=2500w");
	background-repeat: no-repeat;
	background-size: 100%;
	background-attachment: fixed;
	background-position: center;
}

form {
	max-width: 30%;
	margin: 60px;
	margin-top: 15px;
	background: rgb(0, 0, 0); /* Fallback color */
	background: rgba(0, 0, 0, 0.3);
	/*padding: 10px 10px;*/
	padding-top: 5px;
	text-align: center;
	margin-right: auto;
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
</style>
</head>

<body>
	<div class="wrapper">
		<!-- Top Bar Start -->
		<div class="top-bar">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-3">
						<div class="logo">
							<a href="index.html">
								<h1>Democratic Binder</h1> <br>
							</a>
						</div>
					</div>
					<div class="col-lg-9">
						<div class="top-bar-right">
							<div class="social">
								<a href="/register">Register</a> <a href="/login">Login</a>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	</nav>
	</div>
	</div>
	<!-- Nav Bar End -->
	<br>
	<br>
	<br>
	<form action="/userreg" method="POST" name="f2"
		onsubmit="return validate()">
		<table align="center">
			<tr>
				<td style="color: #D1DDE5">Name</td>
			</tr>
			<tr>
				<td><input type="text" placeholder="Enter Name" name="name"
					required><br></td>
			</tr>
			<tr>
				<td style="color: #D1DDE5">Email</td>
			</tr>
			<tr>
				<td><input type="text" placeholder="Enter Email" name="email"
					required><br></td>
			</tr>
			<tr>
				<td style="color: #D1DDE5">Password</td>
			</tr>
			<tr>
				<td><input type="password" placeholder="Enter Password"
					name="password" required><br></td>
			</tr>
			<tr>
				<td style="color: #D1DDE5">Confirm Password</td>
			</tr>
			<tr>
				<td><input type="password" placeholder="Confirm Password"
					name="cp" required><br></td>
			</tr>
			<tr>
				<td><button type="submit">Register</button>
					<br> <a href="/login"> Aldready have an Account ? </a>
		</table>
	</form>
</body>
</html>
