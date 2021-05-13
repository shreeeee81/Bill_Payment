<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

  <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <!DOCTYPE html>
    <html>

    <head>
      <meta charset="ISO-8859-1">
      <title>BILL PAYMENT-CUSTOMER REGISTRATION</title>
      <!-- <link rel="stylesheet" type="text/css" href="cusstyle.css"> -->
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
      <!-- <div class="header1">
<h1>BILL PAYMENT-CUSTOMER REGISTRATION</h1>

</div> -->
      <!-- Form  -->
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
              Customer Sign up
            </h1>
            <p class="sign-up__descr">
              Welcome, Please sign up your account.
            </p>
          </header>
          <form:form action="cusregistration" method="post" modelAttribute="cusreg" class="sign-up__form form">
            <div class="form__row form__row--two">
              <div class="input form__inline-input">
                <div class="input__container">
                  <form:input path="firstname" class="input__field" type="text" placeholder="Firstname" /><label
                    class="input__label" for="first-name">Firstname</label>
                  <br>
                  <form:errors path="firstname" cssClass="errors" style="color: red;"></form:errors>
                </div>
              </div>
              <div class="input form__inline-input">
                <div class="input__container">
                  <form:input path="lastname" class="input__field" type="text" placeholder="Lastname" /><label
                    class="input__label" for="last-name">Lastname</label>
                  <br>
                  <form:errors path="lastname" cssClass="errors" style="color: red;"></form:errors>
                </div>
              </div>
            </div>
            <div class="form__row">
              <div class="input">
                <div class="input__container">
                  <form:input path="email" class="input__field" type="text" placeholder="Email" /><label
                    class="input__label" for="email">Email</label>
                  <br>
                  <form:errors path="email" cssClass="errors" style="color: red;"></form:errors>
                </div>
              </div>
            </div>
            <div class="form__row">
              <div class="input">
                <div class="input__container">
                  <form:input path="mobile" class="input__field" type="text" placeholder="Contact" /><label
                    class="input__label" for="contact">Contact</label>
                  <br>
                  <form:errors path="mobile" cssClass="errors" style="color: red;"></form:errors>
                </div>
              </div>
            </div>
            <div class="form__row">
              <div class="input">
                <div class="input__container">
                  <!-- <form:input path="mobile" class="input__field" type="text" placeholder="Contact" /><label
                    class="input__label" for="first-name">Contact</label>
                  <br>
                  <form:errors path="mobile" cssClass="errors" style="color: red;"></form:errors> -->
                  <!-- <input type="radio" name="gender" value="male">Male
                  <input type="radio" name="gender" value="female">Female
                  <input type="radio" name="gender" value="male">Others -->
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="gender" value="male" id="flexRadioDefault1">
                    <label class="form-check-label" for="flexRadioDefault1">
                      Male
                    </label>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="gender" value="female" id="flexRadioDefault2"
                      checked>
                    <label class="form-check-label" for="flexRadioDefault2">
                      Female
                    </label>
                  </div>
                </div>
              </div>
            </div>
            <div class="form__row">
              <div class="input">
                <div class="input__container">
                  <form:input path="address" name="address" class="input__field" type="text" placeholder="Address" />
                  <label class="input__label" for="first-name">Address</label>
                  <br>
                  <form:errors path="address" cssClass="errors" style="color: red;"></form:errors>
                  <!-- Address
                  <textarea name="address" rows="5" cols="20" placeholder="Enter your local address"
                  class="forms"></textarea> -->
                </div>
              </div>
            </div>
            <div class="form__row">
              <div class="input">
                <div class="input__container">
                  <form:input path="username" class="input__field" type="text" placeholder="Username" /><label
                    class="input__label" for="first-name">Username</label>
                  <br>
                  <form:errors path="username" cssClass="errors" style="color: red;"></form:errors>
                </div>
              </div>
            </div>
            <div class="form__row">
              <div class="form__row">
                <div class="input">
                  <div class="input__container">
                    <form:password path="password" class="input__field" placeholder="Password" id="pass" />
                    <label class="input__label" for="first-name">Password</label>
                    <br>
                    <form:errors path="password" cssClass="errors" style="color: red;">
                    </form:errors>
                  </div>
                </div>
              </div>
            </div>
            <div class="form__row">
				<div class="form__row">
				  <div class="input">
					<div class="input__container">
					  <form:password path="confirmationpassword" class="input__field" placeholder="Confirm Password" id="conpass" />
					  <label class="input__label" for="first-name">Confirm Password</label>
					  <br>
					  <form:errors path="password" cssClass="errors" style="color: red;">
					  </form:errors>
					</div>
				  </div>
				</div>
			  </div>
            <div class="form__row">
                <div class="input">
                  <div class="input__container">
                     <select name="secretquestion" class="form-select" aria-label="Default select example">
                      <option selected>Secret Question</option>
                      <option value="What was your first car?">What was your first car?</option>
                      <option value="What is the name of your pet?">What is the name of your pet?</option>
                      <option value="What is the name of town where you were born?">What is the name of town where you were born?</option>
                    </select>
                  </div>
                </div>
              </div>
              <div class="form__row">
                <div class="input">
                  <div class="input__container">
                    <form:input path="answer" class="input__field" type="text" placeholder="Answer" /><label
                      class="input__label" for="first-name">Answer</label>
                    <br>
                    <form:errors path="answer" cssClass="errors" style="color: red;"></form:errors>
                  </div>
                </div>
              </div>
            <a>
              <input type="submit" id="bsub" value="Register" class="btn btn-dark" />

          </form:form>
        </div>
        <div class="form__row sign-up__sign">
          Existing Customer? &nbsp;<a class="link" href="/customer">Sign In</a>
        </div>
      </main>
      <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
      <script type="text/javascript">
          $(function () {
              $("#bsub").click(function () {
                  var password = $("#pass").val();
                  var confirmPassword = $("#conpass").val();
                  if (password != confirmPassword) {
                      alert("Passwords do not match.");
                      return false;
                  }
                  return true;
              });
          });
      </script>
    </body>

    </html>