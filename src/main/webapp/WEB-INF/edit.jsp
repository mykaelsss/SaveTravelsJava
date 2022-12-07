<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Expense</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>
	<nav class="">
	<h1>Edit expense:</h1>
	<a href="/">Home</a>
	</nav>
	<form:form action="/push/edit/${expense.id}" method="post" modelAttribute="expense" class="form w-25">
		<input type="hidden" name="_method" value="put">
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
	</form:form>
</body>
</html>