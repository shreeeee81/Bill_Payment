<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reset Password</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="customer.css">
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
</head>
<body>
<%
String username =(String) session.getAttribute("userid");
%>

<main class="sign-up">
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

      </div>

    </nav>
    <div class="sign-up__content">
        <header class="sign-up__header">
          <h1 class="sign-up__title">
            Reset Password
          </h1>
          <p class="sign-up__descr">
          Enter new password
          </p>
        </header>
        <form action="resetpwd" method="post" class="sign-up__form form">
          
                      <div class="form__row">
            <div class="input">
              <div class="input__container">
                <input type="text" name="username" value="${userid}" class="input__field" /><label
                  class="input__label" for="first-name">Username</label>
              
              </div>
            </div>
          </div>
     
          <div class="form__row">
              <div class="input">
                <div class="input__container">
                    <input type="password" name="password"  class="input__field" placeholder="New Password"/><label
                    class="input__label" for="first-name">New Password</label>
                </div>
              </div>
            </div>
            <div class="form__row">
                <div class="input">
                  <div class="input__container">
                      <input type="password" name="confirmationpassword"  class="input__field" placeholder="New Password"/><label
                      class="input__label" for="first-name">Confirm New Password</label>
                  </div>
                </div>
              </div>
             
            <input type="submit" value="Reset" class="btn btn-dark" />
            <br><br><center>
            <span>${message}</span></center>
            <br>
        <form>
            <div class="form__row sign-up__sign">
                <a class="link" href="vendor">LOGIN</a>
              </div>
        
      </div>
     




    </main>






</body>
</html>
