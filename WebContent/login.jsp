<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
 <center>
<body style="background-color:powderblue;">
    <H1>Welcome to Learners Academy</H1>
</center>

<br><br><br>
 <center>
        <form Action="home.jsp" method=post>
           <label for="uname">User Name: </label>
            <INPUT TYPE="text" name="uname"> <br><br>
            <label for="pword">Password: </label>
            <INPUT TYPE="text" name="pword"> <br><br>
            <INPUT TYPE="submit" value="Login" name="submit"/>
        </form>
   </center>
   <body>
    <% 
    String submitted = (String) request.getParameter("submit");
    if (submitted != null) {
    String username=request.getParameter("uname"); 
    String password=request.getParameter("password"); 
    if((username.equals("deelu") && password.equals("test"))) 
    {
    session.setAttribute("username",username);	
    response.sendRedirect("home.jsp"); } 
    else 
    	response.sendRedirect("error.jsp"); 
   
    	}%>


</body>
</html>