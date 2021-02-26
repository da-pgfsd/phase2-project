<%@ page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logout</title>
</head>
<body>
 <% session.removeAttribute("username"); 
 session.removeAttribute("password"); 
 session.invalidate(); %> 
 <h1>Thank you for visiting.. You have now logged out successfully.</h1> </body>
 
 
</html>