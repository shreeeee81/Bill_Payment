<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>VENDORLIST</title>

<link rel="stylesheet" type="text/css" href="/style1.css">

</head>
<body>
<div class="header"></div>
<h1>VENDOR LIST</h1>
<div align="center">


</table>
<div align="center">

<table border="1">
<tr>
<th>Username</th>
<th>companyname</th>
<th>Address </th>

<th>mobile</th>

</tr>

<c:forEach items="${userList}" var="vendors_details">
   <tr>
   
   			<td>${vendors_details.username}</td>
   			<td>${vendors_details.companyname}</td>
   			<td>${vendors_details.address}</td>
        
            <td>${vendors_details.mobile}</td>
              
      
   <li><a href="/edit">Edit</a></li>
   </tr>
   </c:forEach>
<br>
</table>
</div>
<li><a href="/back" >BACK</a></li>

</body>


</html>