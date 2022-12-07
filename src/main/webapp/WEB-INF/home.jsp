<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Expenses</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>
	<h1>Save Travels</h1>
	<table class="table">
		<thead>
			<tr>
				<td>Expenses</td>
				<td>Vendor</td>
				<td>Amount</td>
				<td>Actions</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="expense" items="${expenses}">
				<tr>
					<td><a href="/expenses/${expense.id}"><c:out value="${expense.expenseName}"/></a></td>
					<td><c:out value="${expense.vendor}"/></td>
					<td>$<c:out value="${expense.amount}"/></td> 
					<td class="d-flex gap-2"><a href="/edit/${expense.id}" class="btn btn-primary">edit</a> <form action="delete/${expense.id}" method="post">
    <input type="hidden" name="_method" value="delete">
    <input type="submit" value="Delete" class="btn btn-danger"></form></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<a href="/new/expense" class="btn btn-primary">Add Expense</a>
</body>
</html>