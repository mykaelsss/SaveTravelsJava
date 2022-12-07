<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Expense</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>
	<nav>
		<h1>Expense Details</h1>
		<a href="/">Home</a>
	</nav>
	<div>
		<p>Expense Name: <c:out value="${expense.expenseName}"/></p>
		<p>Expense Description: <c:out value="${expense.description}"/></p>
		<p>Vendor: <c:out value="${expense.vendor}"/></p>
		<p>Amount Spent: $<c:out value="${expense.amount}"/></p>
	</div>
</body>
</html>