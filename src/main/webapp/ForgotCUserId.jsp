<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<link rel="stylesheet" type="text/css" href="/cusstyle1.css"/>
</head>
<body>
<div class="header1" align="center">
<h1>Forgot UserId ?</h1>
</div>
<div align="center">
<div class="formsdata">
<form action="/getCUserId" method="post" >
<table style="width:200px ";border=1px>
<tr>
<td align="left" style="width:10rem;padding: 10px; margin-left: 0;">Contact Number:</td>
<td>
<input type="text" name="mobile" class="formcontrol">
</td>
</tr>
<tr>
<td>Select Question:</td>
<td>
<select style="width: 170px;height: 30px;" name="secretquestion" >
<option value="" disabled selected>Select</option>
<option value="What is the name of town where you were born?">What is the name of town where you were born?</option>
<option value="What was your first car?">What was your first car?</option>
<option value="What elementary school did you attend?">What elementary school did you attend?</option>
<option value="What is the name of your pet?">What is the name of your pet?</option>
</select>
</td>
</tr>
<tr>
<td align="left" style="width:10rem;padding: 5px; margin-left: 0;">Enter answer:</td>
<td><input type="text" name="answer" placeholder="Answer" class="formcontrol">
<br>
<span>${message}</span>
</td>
</tr>
<tr>
<td colspan="2" align="center">
<input type="submit" value="submit" class="formsubmitbutton"> 
</td>
</tr>
</table>
</form>
<a href="customer">Login</a>
</div>
</div>
</body>
</html>
