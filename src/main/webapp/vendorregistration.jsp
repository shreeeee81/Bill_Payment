<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

  <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <!DOCTYPE html>
    <html>

    <head>
      <meta charset="ISO-8859-1">
      <title>BILL PAYMENT-CUSTOMER REGISTRATION</title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
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
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto ml-5 pl-5">
              <li class="nav-item"><a class="nav-link" href="/admin" style="color: white">Admin <span
                    class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item"><a class="nav-link" href="/customer" style="color: white">Customer</a></li>
              <li class="nav-item"><a class="nav-link" href="/vendor" style="color: white">Vendor</a></li>
            </ul>

          </div>

        </nav>
        <div class="sign-up__content">
          <header class="sign-up__header">
            <h1 class="sign-up__title">
              Vendor Sign up
            </h1>
            <p class="sign-up__descr">
              Welcome, Please sign up your account.
            </p>
          </header>
          <form:form action="venregistration" method="post" modelAttribute="venreg" class="sign-up__form form">
            <div class="form__row">
              <div class="input">
                <div class="input__container">
                  <form:input path="companyname" class="input__field" type="text" placeholder="Vendor Name" /><label
                    class="input__label" for="companyname">Vendor Name</label>
                  <br>
                  <form:errors path="companyname" cssClass="errors" style="color: red;"></form:errors>
                </div>
              </div>
            </div>
            <div class="form__row">
              <div class="input">
                <div class="input__container">
                  <!-- <form:input path="category" class="input__field" type="text" placeholder="Category" /><label
                  class="input__label" for="category">Category</label>
                <br>
                <form:errors path="category" cssClass="errors" style="color: red;"></form:errors> -->
                  <select name="category" class="form-select" aria-label="Default select example">
                    <option selected>Category</option>
                    <option value="DTH">DTH</option>
                    <option value="ELECTRICITY">ELECTRICITY</option>
                    <option value="TELEPHONE">TELEPHONE</option>
                  </select>
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
                  <form:input path="address" name="address" class="input__field" type="text" placeholder="Address" />
                  <label class="input__label" for="address">Address</label>
                  <br>
                  <form:errors path="address" cssClass="errors" style="color: red;"></form:errors>
                </div>
              </div>
            </div>
            <div class="form__row">
              <div class="input">
                <div class="input__container">
                  <form:input path="maplocation" name="maplocation" class="input__field" type="text"
                    placeholder="Map Location" />
                  <label class="input__label" for="first-name">Map Location</label>
                  <br>
                  <form:errors path="maplocation" cssClass="errors" style="color: red;"></form:errors>
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
                    <form:password path="password" class="input__field" placeholder="Password" id="pass"/>
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
					  <form:password path="confirmationpassword" class="input__field" placeholder="Password" id="conpass" />
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
                  <!-- <form:input path="category" class="input__field" type="text" placeholder="Category" /><label
                  class="input__label" for="category">Category</label>
                <br>
                <form:errors path="category" cssClass="errors" style="color: red;"></form:errors> -->
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

            <input type="submit" id="bsub" value="Register" class="btn btn-dark" />

          </form:form>



        </div>

        <div class="form__row sign-up__sign">
          Existing Vendor? &nbsp;<a class="link" href="/vendor">Sign In</a>
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






















