<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
   <!DOCTYPE html>
   <html>

   <head>
      <meta charset="ISO-8859-1">
      <title>BILL PAYMENT -VENDOR PORTAL</title>
      <!-- <link rel="stylesheet" type="text/css" href="/cusstyle.css"> -->
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


      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
                  <li class="nav-item"><a class="nav-link" href="/" style="color: white"> <span
                           class="glyphicon glyphicon-log-out"></span>LOGOUT</a></li>
               </ul>
            </div>
         </nav>
        

         <div class="container mt-5">
            <div class="row">
               <div class="col-sm-4">
                  <div class="card">
                     <div class="card-body">
                        <h5 class="card-title">Update Vendors</h5>
                        <p class="card-text">Click proceed to update. the vendors.</p>
                        <a href="/vendorupdate" class="btn btn-dark">Proceed</a>
                     </div>
                  </div>

               </div>
               <div class="col-sm-4">
                  <div class="card">
                     <div class="card-body">
                        <h5 class="card-title">Help</h5>
                        <p class="card-text">Click proceed to get help.</p>
                        <a href="beforehelp1" class="btn btn-dark">Proceed</a>
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
                              <a class="dropdown-item" href="transactionD">Success DTH</a>
                              <a class="dropdown-item" href="transactionE">Success ELECTRICITY</a>
                              <a class="dropdown-item" href="tranasction2">Success Telephone</a>
                              <div class="dropdown-divider"></div>
                              <a class="dropdown-item" href="failE">Failed DTH</a>
                              <a class="dropdown-item" href="failD">Failed Electricity</a>
                              <a class="dropdown-item" href="fail2">Failed Telephone</a>
                           </div>
                        </div>


                     </div>
                  </div>

               </div>
            </div>
         </div>





      </main>


   </body>

   </html>