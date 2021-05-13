<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bill-Payment</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="customer.css">

</head>

<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="/customerportal.jsp">BILL PAYMENT</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse"
        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
        aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto ml-5 pl-5">
            <li class="nav-item"><a class="nav-link" href="cusvendors" style="color: white">Vendors
                    <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item"><a class="nav-link" href="billpayhome" style="color: white">Bill
                    Payment</a></li>

            <li class="nav-item"><a class="nav-link" href="recordbill" style="color: white">Bill
                    Records</a></li>

            <li class="nav-item"><a class="nav-link" href="/feedback1" style="color: white">FeedBack</a>
            </li>
            </li>
            <li class="nav-item"><a class="nav-link" href="/beforehelp" style="color: white">Help</a>
            </li>
            </li>
            <li class="nav-item"><a class="nav-link" href="/" style="color: white">Logout</a></li>
        </ul>
      
    </div>
</nav>
<br>
 <%
    String username =(String) session.getAttribute("username");
    
    %>

	<div class="container-fluid mt-5">
		<h3 class="text-center">Customer Feedback</h3>
		<div class="row">
			<div class="col-sm-12">
				<form onsubmit="return validate()" action="feedbackques" modelAttribute="feedbk" method="post">
                    <form:input type="text" id="username" value="${username}"></form:input>
					<table class="table table-bordered">
						<thead>
							<tr>
								<th scope="col">Questions</th>
								<th scope="col">Agree</th>
								<th scope="col">Disagree</th>
								<th scope="col">Strongly-Agree</th>
								<th scope="col">Strongly-Disagree</th>
								<th scope="col">No-opinion</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">
									Is Information on the website clear and easy to understand ?
								</th>
								<td><input class="form-check-input mx-3" type="radio" name="ans1" id="ans1" value="agree"></td>
								<td><input class="form-check-input mx-3" type="radio" name="ans1" id="ans1" value="disagree"></td>
								<td><input class="form-check-input mx-3" type="radio" name="ans1" id="ans1" value="Stronglyagree"></td>
								<td><input class="form-check-input mx-3" type="radio" name="ans1" id="ans1" value="Stronglydisagree"></td>
								<td><input class="form-check-input mx-3" type="radio" name="ans1" id="ans1" value="Neithernoragree"></td>
							</tr>
							<tr>
								<th scope="row">
									Can u easily find what you are looking for on the website ?
								</th>
								<td><input class="form-check-input mx-3" type="radio" name="ans2" id="ans2" value="agree"></td>
								<td><input class="form-check-input mx-3" type="radio" name="ans2" id="ans2" value="disagree"></td>
								<td><input class="form-check-input mx-3" type="radio" name="ans2" id="ans2" value="Stronglyagree"></td>
								<td><input class="form-check-input mx-3" type="radio" name="ans2" id="ans2" value="Stronglydisagree"></td>
								<td><input class="form-check-input mx-3" type="radio" name="ans2" id="ans2" value="Neithernoragree"></td>
							</tr>
							<tr>
								<th scope="row">
									Does the website includes all information u needed ?
								</th>
								<td><input class="form-check-input mx-3" type="radio" name="ans3" id="ans3" value="agree"></td>
								<td><input class="form-check-input mx-3" type="radio" name="ans3" id="ans3" value="disagree"></td>
								<td><input class="form-check-input mx-3" type="radio" name="ans3" id="ans3" value="Stronglyagree"></td>
								<td><input class="form-check-input mx-3" type="radio" name="ans3" id="ans3" value="Stronglydisagree"></td>
								<td><input class="form-check-input mx-3" type="radio" name="ans3" id="ans3" value="Neithernoragree"></td>
							</tr>
							<tr>
								<th scope="row">
									Does The website works well technically loading quickly and displaying appropriately ?
								</th>
                                <td><input class="form-check-input mx-3" type="radio" name="ans4" id="ans4" value="agree"></td>
								<td><input class="form-check-input mx-3" type="radio" name="ans4" id="ans4" value="disagree"></td>
								<td><input class="form-check-input mx-3" type="radio" name="ans4" id="ans4" value="Stronglyagree"></td>
								<td><input class="form-check-input mx-3" type="radio" name="ans4" id="ans4" value="Stronglydisagree"></td>
								<td><input class="form-check-input mx-3" type="radio" name="ans4" id="ans4" value="Neithernoragree"></td>
							</tr>
							<tr>
								<th scope="row">
									Does The website meets your's needs ?
								</th>
                                <td><input class="form-check-input mx-3" type="radio" name="ans5" id="ans5" value="agree"></td>
								<td><input class="form-check-input mx-3" type="radio" name="ans5" id="ans5" value="disagree"></td>
								<td><input class="form-check-input mx-3" type="radio" name="ans5" id="ans5" value="Stronglyagree"></td>
								<td><input class="form-check-input mx-3" type="radio" name="ans5" id="ans5" value="Stronglydisagree"></td>
								<td><input class="form-check-input mx-3" type="radio" name="ans5" id="ans5" value="Neithernoragree"></td>
							</tr>
							
						</tbody>
					</table>
					<button type="submit" class="btn btn-dark">Submit Feedback</button>
				</form>
			</div>
		</div>
	</div>
    <p1>${message }</p1>


</body>

</html>


