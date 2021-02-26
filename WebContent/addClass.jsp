<%@ page import="com.admin.portal.master, com.admin.portal.Sclass"
	language="java" contentType="text/html; charset=ISO-8859-1"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Class</title>
</head>
<body>

<h3><a href=home.jsp>Return to Home </a> </h3>
<br><br>

        <H1>Add Class to Master</H1>
        <form Action="addClass.jsp">
           <label for="clname">Class Name:</label>
            <INPUT TYPE="text" name="clname"> <br><br>
            <INPUT TYPE="submit" value="Add Class" name="submit"/>
        </form>
                   
    <%   
    String submitted = (String) request.getParameter("submit");
    if (submitted != null) {
       String name=request.getParameter("clname");
        master obj = new master();
    	obj.addClassdata(name);	
    	out.println("Class "+name+ " is successfully added to Class Master");
    }
  
    %>
        
</body>
</html>