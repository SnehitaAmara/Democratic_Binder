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
	<link rel="stylesheet" th:href="@{/css/result.css}">
	<title>Result Page</title>
</head>
<body>
	
	<!-- Main Container Start -->
	<div class="main-container container py-5 px-4">
		<div class="card bg-dark text-light py-5 px-4 mx-auto">
			<img th:src="@{/images/exam.svg}" alt="image">
			
			<h3 class="bg-danger text-center mb-5 p-2">Your Score</h3>
			
			<div class="d-flex justify-content-center">
				<p>Participant name:&nbsp;&nbsp;</p>
				<p th:if="${result}" th:text="${result.username}"></p>
			</div>
			
			<div class="d-flex justify-content-center">
				<p>Total correct answer:&nbsp;&nbsp;</p>
				<p th:if="${result}" th:text="${result.totalCorrect}"></p>
			</div>
			
			<div class="d-flex justify-content-center">
				<p>Total false answer:&nbsp;&nbsp;</p>
				<p th:if="${result}" th:text="5 - ${result.totalCorrect}"></p>
			</div>
			
			<div class="d-flex justify-content-center mt-4">
				<button type="button" th:onclick="window.location.href='/score'"
					class="btn btn-outline-warning mx-auto">View Score Board</button>
				<button type="button" th:onclick="window.location.href='/'"
					class="btn btn-outline-warning mx-auto">Back to Homepage</button>
			</div>
		</div>
	</div>
	
	<!-- Bootstrap JS -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>