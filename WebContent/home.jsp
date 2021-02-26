<%@ page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

 <title>Learners Academy Management Portal</title>
</head>

<body style="background-color:powderblue;">
<center>
<%= new Date() %>
 </center>
 
 <h3>
 <a href="logout.jsp">Logout</a>
&nbsp;&nbsp;&nbsp;
 </h3>
<center>



<h1 style="background-color:DodgerBlue;">Learners Academy Management Portal</h1>

<br> <br> <br> 
 <h2>
<a href="viewClass.jsp">View Class Master </a>
 &nbsp;&nbsp;&nbsp;
<a href="viewStudent.jsp">View Student Master</a>
 &nbsp;&nbsp;&nbsp;
<a href="viewSubject.jsp">View Subject Master</a>
 &nbsp;&nbsp;&nbsp;
<a href="viewTeacher.jsp">View Teacher Master</a>
 &nbsp;&nbsp;&nbsp;
<a href="classReport.jsp">View Class Report</a>
 </h2>
</center>

  <form>
  <br> <br> <br> 
  <div style="text-align: center" > 
 <INPUT TYPE="submit" value="Add Class to Master" name="submit"/>
    <% String a=request.getParameter("submit");
        if (a!=null && a.equals("Add Class to Master")){ 
        	response.sendRedirect("addClass.jsp");
        } %>

      
 </div>
&nbsp;
  <div style="text-align: center" >
 <INPUT TYPE="submit" value="Add Student to Master" name="submit" />
    
  <% String b=request.getParameter("submit");
        if (b!=null && b.equals("Add Student to Master")){ 
        	response.sendRedirect("addStudent.jsp");
        } %>
 </div>
 &nbsp;
<div style="text-align: center">
 <INPUT TYPE="submit" value="Add Subject to Master" name="submit" />
 <% String c=request.getParameter("submit");
        if (c!=null && c.equals("Add Subject to Master")){ 
        	response.sendRedirect("addSubject.jsp");
        } %>
 </div>
 &nbsp; &nbsp; &nbsp;
  <div style="text-align: center">
 <INPUT TYPE="submit" value="Add Teacher to Master" name="submit"/>
 <% String d=request.getParameter("submit");
        if (d!=null && c.equals("Add Teacher to Master")){ 
        	response.sendRedirect("addTeacher.jsp");
        } %>
  </div> 
  &nbsp;               
  </form>
 
 
</body>
</html>