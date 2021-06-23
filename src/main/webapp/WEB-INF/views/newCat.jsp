<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Category</title>
<link rel="stylesheet" type="text/css" href="/css/bootstrap.css"/>
</head>
<body>
	<div class="container p-5">
		<h1 class="mb-5">New Category</h1>
		<form:form method="post" action="/categories/new" modelAttribute="category" style="width:30%">
			<p class="d-flex align-items-center">
				<form:label class="form-label" style="width:50%" path="name">Name:</form:label>
				<form:errors path="name"/>
				<form:input path="name" class="form-control"/>
			</p>
			<div class="d-flex justify-content-end">
				<input type="submit" value="submit" class="btn btn-outline-primary"/>
			</div>
		</form:form>
	</div>
</body>
</html>