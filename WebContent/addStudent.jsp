<%@ page import="com.admin.portal.master, com.admin.portal.Student,com.admin.portal.Sclass"
	language="java" contentType="text/html; charset=ISO-8859-1"%>
	<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Student</title>
</head>
<body>

<h3><a href=home.jsp>Return to Home </a> </h3>
<br><br>

  <H1>Add Student to Master</H1>
        
    <%
    master obj = new master();
    master mobj = new master();
    List<Sclass> list = null;
	list = obj.viewClassdata();
	%>
	
	 <style>
    select {
        width: 100px;
        margin: 10px;
        font size="2"
     
    }
    select:focus {
        min-width: 100px;
        width: auto;

}
    }
 </style>

        <form Action="addStudent.jsp">
       
           <label for="sid"> Student Id: </label>
            <INPUT TYPE="text" name="stid"> <br><br>
            <label for="sname"> Student Name :</label>
            <INPUT TYPE="text" name="stname"> <br><br>
            <label for="standard-select">Select Class: </label>
                     
              <td height="20"><font size="5"> <select name="standard-select" "id=standard-select" size="5" value="Select Class Id">
				<% 
				for (Sclass c : list) {
				%>
				<option value="<%=c.getCid()%>"><%=c.getCname()%></option>
				<%
				}
				%>
			</select>
			
			</font></td>
			<br><br><br>
            <INPUT TYPE="submit" value="Add Student" name="submit"/>
        </form>
                   
   <%   
      String submitted = (String) request.getParameter("submit");
      if (submitted != null) {
       String sid=request.getParameter("stid");
       String sname=request.getParameter("stname");
       String dvalue = request.getParameter("standard-select");
        int cid= Integer.parseInt(dvalue);
       mobj.addStudentData(sid,sname,cid);	
    	out.println("Student "+sname+ " is successfully added to Student Master"); 
    	 
    	}
         %>
  
        
</body>
</html>