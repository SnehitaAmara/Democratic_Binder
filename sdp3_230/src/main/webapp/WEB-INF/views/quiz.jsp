<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/quiz.css?ver=1.2.1">
	<title>Quiz Page</title>
</head>
<body>
	
	<div class="container py-5 px-4">
		<h1 class="bg-danger text-light">Choose your Answers</h1>
		
		<form action="submit" method="POST" th:object=${qForm}>
			<div class="ques-box bg-dark text-light" th:each="ques, i: ${qForm.questions}">
				<p class="title" th:text="${ques.title}"></p>
				
				<div class="option">
					<input type="radio" th:name="|questions[${i.index}].chose|" th:value="1" />
					<%-- <p th:text="${ques.opt1}"></p> --%>
					<c:out value="${ques.title}"/>
				</div>
				
				<div class="option">
					<input type="radio" th:name="|questions[${i.index}].chose|" th:value="2" />
					<p th:text="${ques.opt2}"></p>
				</div>
				
				<div class="option">
					<input type="radio" th:name="|questions[${i.index}].chose|" th:value="3" />
					<p th:text="${ques.opt3}"></p>
				</div>
				
				<input type="hidden" th:name="|questions[${i.index}].qId|" th:value="${ques.qId}" />
				<input type="hidden" th:name="|questions[${i.index}].title|" th:value="${ques.title}" />
				<input type="hidden" th:name="|questions[${i.index}].ans|" th:value="${ques.ans}" />
			</div>
			
			<button type="submit" class="btn btn-danger d-block mx-auto mt-4">Submit Answer</button>
		</form>
	</div>
	
	<!-- Bootstrap JS -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>