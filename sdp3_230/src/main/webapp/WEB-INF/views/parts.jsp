<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/newscards.css?ver=1.2.1" />
<title>Parts</title>
</head>
<body style="Background: url(https://img.freepik.com/free-photo/judge-s-gavel-book-wooden-table_99433-286.jpg?size=626&ext=jpg); background-size: 100%">
<a href="/welcome"> Go Back </a>
<c:forEach var="indt" items="${partss}">
		<div class="card-container">
			<div class="card">
				<a href="hottub">
					<div class="card--display">
						<i class="material-icons">
							<%-- <p th:text="${indt.getTitle()}"></p> --%>
							<c:out value="${indt.title}"/>
						</i>
						<h2>
							<c:out value="${indt.description}"/>
						</h2>
					</div>
					<div class="card--hover">
						<p><c:out value="${indt.statement}"/></p>

					</div>
				</a>
				<div class="card--border"></div>
			</div>
		</div>
	</c:forEach>
</body>
</html>