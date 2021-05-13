<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <!DOCTYPE html>
    <html>

    <head>
      <meta charset="ISO-8859-1">
      <title>Admin home</title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
      <link rel="stylesheet" type="text/css" href="customer.css">
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>

      <!-- <link rel="stylesheet" type="text/css" href="/style1.css"> -->


    </head>

    <body>
      <main class="sign-up" style="background-image: url('abs.jpg');">
      <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="/">BILL PAYMENT</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
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
          <ul class="nav navbar-nav navbar-right">
            <li class="nav-item"><a class="nav-link" href="/" style="color: white"> LOGOUT</a></li>
          </ul>
        </div>
      </nav>
<br>
     
        <h5>
          <center>Welcome ADMIN</center>
        </h5>  
        
        <div class="container mt-5">
           <div class="row">
            <div class="col-sm-4">
              <div class="card">
                <div class="card-body">
                  <h5 class="card-title">Registered Vendors</h5>
                  <p class="card-text">Click proceed to view the vendors.</p>
                  <a href="/vendors" class="btn btn-dark">Proceed</a>
                </div>
              </div>
      
            </div>
            <div class="col-sm-4">
              <div class="card">
                <div class="card-body">
                  <h5 class="card-title">View Issues</h5>
                  <p class="card-text">Click proceed to view the issues.</p>
                  <a href="viewissues" class="btn btn-dark">Proceed</a>
                </div>
              </div>
      
            </div>
            <div class="col-sm-4">
              <div class="card">
                 <div class="card-body">
                    <h5 class="card-title">Transactions</h5>
                    <p class="card-text">Click proceed to view the transactions</p>
                    <!-- <a href="/selectBillType" class="btn btn-primary">Proceed</a> -->
                    <div class="btn-group">
                       <button type="button" class="btn btn-dark dropdown-toggle" data-toggle="dropdown"
                          aria-haspopup="true" aria-expanded="false">
                          Proceed
                       </button>
                       <div class="dropdown-menu">
                          <a class="dropdown-item" href="transaction1">Success DTH</a>
                          <a class="dropdown-item" href="transaction">Success ELECTRICITY</a>
                          <a class="dropdown-item" href="tranasction2">Success Telephone</a>
                          <div class="dropdown-divider"></div>
                          <a class="dropdown-item" href="fail1">Failed DTH</a>
                          <a class="dropdown-item" href="fail">Failed Electricity</a>
                          <a class="dropdown-item" href="fail2">Failed Telephone</a>
                       </div>
                    </div>


                 </div>
              </div>

           </div>











            <!-- <div class="col-sm-4">
              <div class="card">
                <div class="card-body">
                  <h5 class="card-title">Jay</h5>
                  <p class="card-text">We provide the service for payment of DTH,Insurance,Electricity,etc</p>
                  <a href="/selectBillType" class="btn btn-primary">Proceed</a>
                </div>
              </div>
      
            </div> -->
          </div>
        </div>

        

      </main>
    </body>

    </html>