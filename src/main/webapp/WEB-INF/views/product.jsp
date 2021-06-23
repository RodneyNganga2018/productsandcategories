<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product</title>
<link rel="stylesheet" type="text/css" href="/css/bootstrap.css"/>
</head>
<body>
	<div class="container p-5">
		<h1 class="mb-5">${product.name}</h1>
		<div class="d-flex justify-content-between">
			<div>
				<h3>Categories:</h3>
					<ul>
						<c:forEach items="${added}" var="item">
							<li>${item.name}</li>
						</c:forEach>
					</ul>
			</div>
			<div>
				<form method="post" action="/products/${product.id}" style="width:500px" class="mt-3"> 
					<p class="d-flex align-items-center">
						<label class="form-label" style="width:50%">Add Category:</label>
						<select class="form-select" name="cid">
							<c:forEach items="${menu}" var="item">
								<option value="${item.id}">${item.name}</option>
							</c:forEach>
						</select>
					</p>
					<div class="d-flex justify-content-end">
						<input type="submit" value="add" class="btn btn-outline-success" />
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>