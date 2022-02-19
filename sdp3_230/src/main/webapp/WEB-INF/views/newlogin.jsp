<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Login</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Law Firm Website Template" name="keywords">
        <meta content="Law Firm Website Template" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=EB+Garamond:ital,wght@1,600;1,700;1,800&family=Roboto:wght@400;500&display=swap" rel="stylesheet"> 
        
        <!-- CSS Libraries -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/welcome.css?ver=1.2.1">
        <style>
body{
    background-image:url("https://lh3.googleusercontent.com/jduglP5Nsk3pOdS8g8OsKyIEORM3FGmh993x_cNcbmNfAIJvK2XUtXegiAnLx4Pt6_m6gtFk84P8Wx55Du0WiV2N0MwfFcnQ-NqFLh0=s400");
      background-repeat:no-repeat;
      background-size:50%;
      background-position: right 80% top 5%;
      background-color: #CACFD2;
           }
 form {  
   max-width: 30%;  
   margin: 50px;  
   background: rgb(0, 0, 0); /* Fallback color */
  background: rgba(0, 0, 0, 0.3);
   padding: 50px 50px;
   text-align: center;  
   margin-left:auto;
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
       background-color:black; 
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
                                    <h1>Democratic Binder</h1>
                                    <br>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-9">
                            <div class="top-bar-right">
                                <div class="social">
                                    <a href="/register">Register</a>
                                    <a href="/login">Login</a>
                                    <a href="/">Home</a>
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
	