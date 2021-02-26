<%@ page import="com.admin.portal.master, com.admin.portal.Student,com.admin.portal.Sclass,com.admin.portal.Subject,com.admin.portal.Teacher"
	language="java" contentType="text/html; charset=ISO-8859-1"%>
	<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Teacher</title>
</head>
<body>

<h3><a href=home.jsp>Return to Home </a> </h3>
<br><br>

  <H1>Add Teacher to Master</H1>
        
    <%
    master obj = new master();
    master tobj = new master();
    master mobj = new master();
    List<Sclass> list = null;
    List<Subject> slist = null;
	list = obj.viewClassdata();
	slist = tobj.viewSubjectData();
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

        <form Action="addTeacher.jsp">
       
            <label for="trname">Teacher Name :</label>
            <INPUT TYPE="text" name="trname"> <br><br>
            <label for="standard-select">Class : </label>
                      
              <td height="20"><font size="5"> <select name="standard-select" "id=standard-select"  size="5" value="Select Class Id">
				<% 
			
				for (Sclass c : list) {
				%>
				<option value="<%=c.getCid()%>"><%=c.getCname()%></option>
										
				<%
				}
				%>
			
		</select>
			<br>
			  <label for="standard-tselect">Subject: </label>
                      
              <td height="20"><font size="5"> <select name="standard-tselect" "id=standard-tselect" size="5" value="Select Subject Id">
				<% 
			
				for (Subject d : slist) {
				%>
				<option value="<%=d.getSubid()%>"><%=d.getSubname()%></option>
				
				<%
				}
				%>
			
		</select>
		
			</font></td>
			<br><br><br>
            <INPUT TYPE="submit" value="Add Teacher" name="submit"/>
        </form>
   <%   
       String submitted = (String) request.getParameter("submit");
      if (submitted != null) {
        String tname=request.getParameter("trname");
        String dvalue = request.getParameter("standard-select");
        int cid= Integer.parseInt(dvalue);

          String dtvalue = request.getParameter("standard-tselect");
         int subid= Integer.parseInt(dtvalue);
          
         mobj.addTeacherData(tname,cid,subid);	
    	out.println("Teacher "+tname+ " is successfully added to Teacher Master"); 
    	 
    	}
   %>
  
        
</body>
</html>