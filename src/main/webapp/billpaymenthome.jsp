<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
  <html>

  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 
<link rel="stylesheet" type="text/css" href="/cusstyle.css"> -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
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
        data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false"
        aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
  
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto ml-5 pl-5">
          <li class="nav-item"><a class="nav-link" href="cusvendors"
            style="color: white">Vendors <span class="sr-only">(current)</span></a>
          </li>
                  <li class="nav-item"><a class="nav-link" href="billpayhome"
            style="color: white">Bill Payment</a></li>
  
          <li class="nav-item"><a class="nav-link" href="recordbill"
            style="color: white">Bill Records</a></li>
          
          <li class="nav-item"><a class="nav-link" href="/feedback1"
            style="color: white">FeedBack</a></li>
          </li>
          <li class="nav-item"><a class="nav-link" href="/beforehelp"
            style="color: white">Help</a></li>
          </li>
          <li class="nav-item"><a class="nav-link" href="/"
            style="color: white">Logout</a></li>
        </ul>
       
  
      </div>
    </nav>
    <main class="sign-up"><br>
      <h5>
        <center>Pay your Bills Now</center>
      </h5>
      <br>
      
      <div class="container mt-5">
         <div class="row">
         
          <div class="col-sm-4">
            <div class="card">
               <div class="card-body">
                  <h5 class="card-title">PAY NOW </h5>
                  <p class="card-text">Pay your DTH, electricity and telephone bills with more secure and easy.</p>
                  <!-- <a href="/selectBillType" class="btn btn-primary">Proceed</a> -->
                  <div class="btn-group">
                     <button type="button" class="btn btn-dark dropdown-toggle" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">
                        PAY
                     </button>
                     <div class="dropdown-menu">
                        <a class="dropdown-item" href="dth">DTH</a>
                        <a class="dropdown-item" href="electricity">ELECTRICITY</a>
                        <a class="dropdown-item" href="telephone">Telephone</a>
                        <!-- <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="fail1">Failed DTH</a>
                        <a class="dropdown-item" href="fail">Failed Electricity</a>
                        <a class="dropdown-item" href="fail2">Failed Telephone</a> -->
                     </div>
                  </div>


               </div>
            </div>

         </div>
         <div class="col-sm-4">
          <div class="card">
             <div class="card-body">
                <h5 class="card-title">BILL HISTORY</h5>
                <p class="card-text">View your DTH, electricity and telephone bills.</p>
                <!-- <a href="/selectBillType" class="btn btn-primary">Proceed</a> -->
                <div class="btn-group">
                   <button type="button" class="btn btn-dark dropdown-toggle" data-toggle="dropdown"
                      aria-haspopup="true" aria-expanded="false">
                      HISTORY
                   </button>
                   <div class="dropdown-menu">
                      <a class="dropdown-item" href="dthbillhistory">DTH</a>
                      <a class="dropdown-item" href="ebillhistory">ELECTRICITY</a>
                      <a class="dropdown-item" href="#">Telephone</a>
                      <!-- <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="fail1">Failed DTH</a>
                      <a class="dropdown-item" href="fail">Failed Electricity</a>
                      <a class="dropdown-item" href="fail2">Failed Telephone</a> -->
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