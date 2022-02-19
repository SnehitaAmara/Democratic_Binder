<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/quiz.css?ver=1.2.1">
<title>Extra</title>
</head>
<body>
		<h1 class="bg-danger text-light">Choose your Answers</h1>
		
		<!-- <form action="submit" method="POST"> -->
		<c:forEach var="ques" items="${qform}">
				<p>${ques.title}</p>
				
				
					<%-- <input type="radio" value="1" />
					<c:out value="${ques.opt1}"/>
				
				
				
					<input type="radio" value="2" />
					<c:out value="${ques.opt2}"/>
				
				
				
					<input type="radio" value="3" />
					<c:out value="${ques.opt3}"/>
				
				
				<input type="hidden" value="${ques.qId}" />
				<input type="hidden" value="${ques.title}" />
				<input type="hidden" value="${ques.ans}" /> --%>
			
			</c:forEach>
			
			
			<!-- <button type="submit" class="btn btn-danger d-block mx-auto mt-4">Submit Answer</button>
		</form> -->
	<!-- </div> -->
	
	<!-- Bootstrap JS -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>