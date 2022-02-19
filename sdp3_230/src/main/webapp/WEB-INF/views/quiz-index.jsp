<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:th="http://www.thymeleaf.org">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Bootstrap CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css?ver=1.2.1" />
	<title>Quiz Page</title>
</head>
<body>
	
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark" th:fragment="navbar">
	  <div class="container-fluid">
	    <a class="navbar-brand" href="/">Quiz App</a>
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="navbarSupportedContent">
	      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
	        <li class="nav-item">
	          <a class="nav-link" href="/">Home</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="/score">Score Board</a>
	        </li>
	       </ul>
	    </div>
	  </div>
	</nav>

	<!-- Main Container Start -->
	<div class="main-container container py-5 px-4">
		<div class="image-box">
			<img src="${pageContext.request.contextPath}/images/quizzz.jpg" alt="image">
		</div>
		<div class="text-box">
			<h1 class="mb-5 text-center">Quiz Time</h1>
			<form class="card bg-dark py-5 px-4" action="/quiz" method="POST">
				<p>Enter Your Name</p>
				<input type="text" name="username" />
				<p class="text-danger warning" th:if="${warning}" th:text="${warning}"></p>
				<button type="submit" class="btn btn-warning">Start Quiz</button>
			</form>
		</div>
	</div>
	
	<!-- Importing Footer -->
	<div th:insert="footer.html :: footer"></div>
	
	<!-- Bootstrap JS -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>