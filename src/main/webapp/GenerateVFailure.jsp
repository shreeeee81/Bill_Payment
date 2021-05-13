<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Report</title>
<!-- <link rel="stylesheet" type="text/css" href="/style1.css"> -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="customer.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
crossorigin="anonymous"></script>
<script
src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
crossorigin="anonymous"></script>
<script
src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
crossorigin="anonymous"></script>

</head>
<body>
	<main class="sign-up">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<a class="navbar-brand" href="/">BILL PAYMENT</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto ml-5 pl-5">
					<li class="nav-item"><a class="nav-link" href="/admin" style="color: white">Admin <span
								class="sr-only">(current)</span></a>
					</li>
					<li class="nav-item"><a class="nav-link" href="/customer" style="color: white">Customer</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="/vendor" style="color: white">Vendor</a></li>
				</ul>
			</div>
		</nav>
		<br>
		<h5>
			<center>Failed Transactions Report</center>
		  </h5><br>

		  <table class="table table-hover">
			<thead>
			  <tr>
				<th scope="col">Bill ID</th>
				<th scope="col">Amount </th>
			
			  </tr>
			</thead>
			<tbody>
				<c:forEach items="${flist}" var="dth">
					<tr>

						<td>${dth.id}</td>
						<td>${dth.amount}</td>

					
					</tr>
				</c:forEach>
			</tbody>
		  </table>
		</main>
		

</body>

</html>


















