<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="ISO-8859-1">
            <title>UPI payment</title>
            <!-- <link rel="stylesheet" type="text/css" href="/cusstyle.css"> -->
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
            <main class="sign-up">

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
                <div class="header1">

                    ${message }
                </div>

                <div class="sign-up__content">
                    <header class="sign-up__header">
                        <h1 class="sign-up__title">
                            Bill Payment
                        </h1>
                        <p class="sign-up__descr">
                            Please enter the UPI Details
                        </p>
                    </header>
                    <form:form  action="gverify" method="post" modelAttribute="vergpay" class="sign-up__form form">
                        <div class="form__row ">
                            <div class="input">
                                <div class="input__container">
                                    <input class="input__field" type="text" name="bil" value="${billno}" /><label
                                        class="input__label" for="billnumber">Bill Number</label>

                                </div>
                            </div>
                        </div>
                        <div class="form__row ">
                            <div class="input">
                                <div class="input__container">
                                    <form:input required="required" path="contactNumber" class="input__field" type="text" placeholder="Contact Number" /><label class="input__label" for="contactnumber">Contact
                                        Number</label>
                                    <br>
                                    <form:errors path="contactNumber" cssClass="errors" style="color: red;"></form:errors>
                                </div>
                            </div>
                        </div>

                        <div class="form__row">
                            <div class="input">
                                <div class="input__container">
                                    <form:input required="required" path="upi" class="input__field" type="text"
                                        placeholder="UPI ID" /><label class="input__label" for="upi">UPI ID</label>
                                        
                                    <br>
                                    <form:errors path="upi" cssClass="errors" style="color: red;"></form:errors>
                                </div>
                            </div>
                        </div>
                       
                        <div class="form__row ">
                            <div class="input">
                                <div class="input__container">
                                    <form:input required="required" path="password" class="input__field" type="password"
                                        placeholder="CVV" /><label class="input__label" for="password">Password</label>
                                    <br>
                                    <form:errors path="password" cssClass="errors" style="color: red;"></form:errors>
                                </div>
                            </div>
                        </div>







                        <input type="submit" value="PAY" class="btn btn-dark" />

                    </form:form>
                </div>

            </main>




        </body>

        </html>

