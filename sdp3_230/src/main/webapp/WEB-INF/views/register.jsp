<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css?ver=1.2.1"> --%>
	<title>Sign-Up</title>
	<style>
body{
       background-image:url("https://images.squarespace-cdn.com/content/v1/5c98c7424d546e5350d2cf32/1589438471471-24B3O9WEJY67YWIK5XXW/AGILE+%281%29.png?format=2500w");
      background-repeat:no-repeat;
      background-size:100%;
      background-attachment: fixed;
      background-position: center;
           }
 form {  
   max-width: 200px;  
   margin: 80px;  
  background: rgb(0, 0, 0); /* Fallback color */
  background: rgba(0, 0, 0, 0.3);
   padding: 50px 100px;
   text-align: center;  
   margin-right:auto;
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
       background-color:#417798; 
       width: 100%;
        color:white; 
        padding: 15px; 
        margin: 10px 0px; 
        border: none; 
        cursor: pointer; 
         } 
	*{
	margin:0;
	padding:0;
	}
	header{
	height:60px;
	background:black;
	padding:0 50px;
	}
	.logo{
	width:30%;
	float:left;
	color:#fff;
	font-weight:bold;
	text-transform:uppercase;
	line-height:60px;
	font-size:35px;
	
	}
	nav{
	width:68%;
	float:right;
	}
	nav ul{
	list-style:none;
	float:right;
	}
	nav ul li{
	display: inline-block;
	}
	nav ul li a{
	text-decoration: none;
	color:#fff;
	font-family:sans-serif;
	font-weight:bold;
	margin:0 10px;
	line-height:60px;
	text-transform:uppercase;
	}
	.banner{
	height:100%;
	}
	.banner img{
	width:100%;
	height:90vh;
	}
	.content{
	padding:5%;
	}
	.content p{
	font-size:18px;
	line-height:1.7;
	font-family:sans-serif;
	margin-bottom:25px;
	}
	footer{
	background:#000;
	color:#fff;
	padding:15px 50px;
	text-align:center;
	}
	   
	   
	   @media (max-width: 600px){        

	header {
	 width: 100%;
	 height: 100%;
	 padding: 0;
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
		var name = document.f2.name.value;
		var email = document.f2.email.value;
		var password = document.f2.password.value;

		var symbol = email.indexOf('@');
		var dot = email.lastIndexOf('.');
		var len = email.length;

		if (name == "" || email == "") {
			alert('All fileds must be filled');
			return false;
		}
		if (password == "") {
			alert('All fileds must be filled');
			return false;
		}
		if (name.length < 8) {
			alert("Name must be min 8 characters");
			return false;
		}

		if (email.length < 8) {
			alert("Email must be min 8 characters");
			return false;
		}

		if (password.length < 6) {
			alert("Password must be min 6 characters");
			return false;
		}

		if (symbol == -1 && dot == -1) {
			alert("Enter Valid EmailID");
			return false;
		} else if ((parseInt(dot) - parseInt(symbol)) == 1) {
			alert("Enter Valid EmailID");
			return false;
		} else if ((parseInt(len) - parseInt(dot) - 1) < 2) {
			alert("Enter Valid EmailID");
			return false;
		}

	}
</script>
</head>
<body>
<form action="/userreg" method="POST" name="f2" onsubmit="return validate()">
<table align="center">
<tr><td style="color:#D1DDE5">Name</td></tr>
          <tr><td>
          <input type="text" placeholder="Enter Name" name="name" required><br>
          </td>
           </tr>
<tr><td style="color:#D1DDE5">Email</td></tr>
          <tr><td>
          <input type="text" placeholder="Enter Email" name="email" required><br>
          </td>
           </tr>
<tr><td style="color:#D1DDE5">Password</td></tr>
       <tr><td>
        <input type="password" placeholder="Enter Password" name="password" required><br>
       </td>
        </tr>
<tr><td style="color:#D1DDE5">Confirm Password</td></tr>
          <tr><td>
          <input type="password" placeholder="Confirm Password" name="cp" required><br>
          </td>
           </tr>
<tr><td><button type="submit">Register</button><br>
<a href="/login"> Aldready have an Account ? </a>
</table>
</form>
</body>
</html>