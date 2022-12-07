<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Expense</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>
	<h1>Add an expense:</h1>
	<form:form action="/add/expense" method="post" modelAttribute="expense" class="form w-25">
		<div class="d-flex flex-column">
			<form:errors path="expenseName"/>
			<form:errors path="vendor"/>
			<form:errors path="amount"/>
			<form:errors path="description"/>
		</div>
		<div>
			<form:label path="expenseName" class="form-label">Expense Name:</form:label>
			<form:input path="expenseName"  class="form-control"/>
		</div>
		<div>
			<form:label path="vendor"  class="form-label">Vendor:</form:label>
			<form:input path="vendor" class="form-control"/>
		</div>
		<div>
			<form:label path="amount"  class="form-label">Amount:</form:label>
			<form:input path="amount" type="number" step="any"  class="form-control"/>
		</div>
		<div>
			<form:label path="description"  class="form-label">Description:</form:label>
			<form:textarea path="description" cols="20" row="4"  class="form-control"/>
		</div>
		<input type="submit" value="Submit" class="btn btn-primary"/>
		<a href="/" class="btn btn-primary">Home</a>
	</form:form>
</body>
</html>