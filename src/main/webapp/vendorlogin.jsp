<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="ISO-8859-1">
            <title>BILL PAYMENT-VENDOR LOGIN</title>
            <!-- <link rel="stylesheet" type="text/css" href="/cusstyle.css"> -->
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
                <div class="sign-up__content">
                    <header class="sign-up__header">
                        <h1 class="sign-up__title">
                            Vendor Sign in
                        </h1>
                        <p class="sign-up__descr">
                            Welcome, Please sign in your account.
                        </p>
                    </header>
                    <form:form action="/venlogin" method="post" modelAttribute="vendor" class="sign-up__form form">
                        <div class="form__row">
                            <div class="input">
                                <div class="input__container">
                                    <form:input path="username" class="input__field" type="text"
                                        placeholder="Username" /><label class="input__label"
                                        for="first-name">Username</label>
                                    <br>
                                    <form:errors path="username" cssClass="errors" style="color: red;"></form:errors>
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="form__row">
                            <div class="form__row">
                                <div class="input">
                                    <div class="input__container">
                                        <form:password path="password" class="input__field" placeholder="Password" />
                                        <label class="input__label" for="first-name">Password</label>
                                        <br>
                                        <form:errors path="password" cssClass="errors" style="color: red;">
                                        </form:errors>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <input type="submit" value="Login" class="btn btn--regular" />
                    </form:form>
                    <br>
                    <div class="header1" style="color: red;">
                        ${message }
                    </div>
                    <br>
                    <div class="form__row sign-up__sign">
                        New Vendor? &nbsp;<a class="link" href="/vendorregistration">Sign Up</a>
                    </div>
                    <div class="form__row sign-up__sign">
                        Forgot Password? &nbsp;<a class="link" href="/forgotpassword">Click here</a>
                    </div>

                </div>
            </main>
        </body>

        </html>