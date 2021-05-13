<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="ISO-8859-1">
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
	<link rel="stylesheet" href="https://cdn.datatables.net/1.10.24/css/jquery.dataTables.min.css" />


	<!-- <link rel="stylesheet" type="text/css" href="/style1.css"> -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
		integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<link rel="stylesheet" type="text/css" href="customer.css">


	<title>Vendor list</title>
</head>

<body>
	<main class="sign-up">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<a class="navbar-brand" href="/customerportal.jsp">BILL PAYMENT</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto ml-5 pl-5">
					<li class="nav-item"><a class="nav-link" href="cusvendors" style="color: white">Vendors <span
								class="sr-only">(current)</span></a>
					</li>
					<li class="nav-item"><a class="nav-link" href="billpayhome" style="color: white">Bill Payment</a>
					</li>

					<li class="nav-item"><a class="nav-link" href="recordbill" style="color: white">Bill Records</a>
					</li>

					<li class="nav-item"><a class="nav-link" href="/feedback1" style="color: white">FeedBack</a></li>
					</li>
					<li class="nav-item"><a class="nav-link" href="/beforehelp" style="color: white">Help</a></li>
					</li>
					<li class="nav-item"><a class="nav-link" href="/" style="color: white">Logout</a></li>
				</ul>

			</div>
		</nav>
		<br>
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<h5>
						<center>List of Vendors</center>
					</h5><br>

					<table class="table table-bordered table-hover" id="vendor">
						<thead>
							<tr>

								<th>Vendorname</th>
								<th>Address</th>
								<th>mobile</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${usersList}" var="vendor_details">
								<tr>
								<td>${vendor_details.companyname}</td>
								<td>${vendor_details.address}</td>
								<td>${vendor_details.mobile}</td>

								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>

	</main>

	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>

</html>
<script>

	$(document).ready(function () {
		$('#vendor').DataTable();
	});

</script>