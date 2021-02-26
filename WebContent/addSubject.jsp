<%@ page import="com.admin.portal.master, com.admin.portal.Student,com.admin.portal.Sclass,com.admin.portal.Subject"
	language="java" contentType="text/html; charset=ISO-8859-1"%>
	<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Subject</title>
</head>
<body>

<h3><a href=home.jsp>Return to Home </a> </h3>
<br><br>

  <H1>Add Subject to Master</H1>
        
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
 </style>

        <form Action="addSubject.jsp">
       
           
            <label for="subjname">Subject Name :</label>
            <INPUT TYPE="text" name="subjname"> <br><br>
            <label for="standard-select">Class Id: </label>
                      
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
            <INPUT TYPE="submit" value="Add Subject" name="submit"/>
        </form>
   <%   
       String submitted = (String) request.getParameter("submit");
      if (submitted != null) {
        String subname=request.getParameter("subjname");
        String dvalue = request.getParameter("standard-select");
        int cid= Integer.parseInt(dvalue);
       mobj.addSubjectData(subname,cid);	
    	out.println("Subject "+subname+ " is successfully added to Subject Master"); 
    	 
    	}
         %>
  
        
</body>
</html>