<%@ page import="com.admin.portal.master"%>
<%@ page import="com.admin.portal.Sclass"%>
<%@ page import="com.admin.portal.Teacher"%>
<%@ page import= "com.admin.portal.Subject"%>
<%@ page import= "com.admin.portal.Student"%>
<%@ page import= "com.admin.portal.ClassDetails"
language="java" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*"%>
			
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Class Report</title>
</head>
<body>


<style type="text/css">
table {
	border-collapse: collapse;
	width: 40%;
}

th, td {
	text-align: left;
	padding: 4px;
}

tr:nth-child(even) {
	background-color: Lightgray;
}

.alignRight {
	text-align: right;
}

.container-form {
	width: 1163px;
	background: #fff;
	border-radius: 10px;
	overflow: hidden;
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
	align-items: center;
	padding: 90px 130px 88px 148px;
}
.action-button
{
	position: relative;
	padding: 10px 40px;
  	margin: 0px 10px 10px 0px;
  	float: left;
	border-radius: 5px;
	font-family: 'Pacifico', cursive;
	font-size: 25px;
	color: #CCCC99;
	text-decoration: none;	
}
</style>


<h2><a href="home.jsp">Return to Home </a> </h2>
<br><br>

<H1>Class Report</H1>
        
   <%
    master obj = new master();
    master mobj = new master();
    master sobj = new master();
    List<Student> listOfStudents = null;
    List<Teacher> listOfTeachers = null;
    List<Subject> listOfSubjects= null;
	%>
	
        <form Action="classReport.jsp">
           <label for="clid">Enter Class Id to view the Report:</label>
            <INPUT TYPE="number" name="clid"> <br><br>
            <INPUT TYPE="submit" value="Submit" name="submit"/>
        </form>
          <br><br>  
          
      <%    
        String submitted = (String) request.getParameter("submit");
         if (submitted != null) {
           String id=request.getParameter("clid");
         //out.println("ClId you entered is: "+id);
           int cid= Integer.parseInt(id);
         // out.println("Id you entered is: "+id);
         listOfStudents = obj.viewStudentDataforClass(cid); 
           listOfTeachers=mobj.viewTeacherDatabyforClass(cid);
           listOfSubjects=sobj.viewSubjectDatabyforClass(cid);
       %>
   
<tr>
			
<th> <b>STUDENTS IN CLASS </b></th>
</tr> 
       
<table border="4">
		<tr>
			<th> STUDENT ID </th>
			<th> STUDENT NAME </th>
			<th> CLASS ID </th>
		</tr>

    <%
 for (Student ref : listOfStudents) {
		%>
		<tr>
		    <td> <%=ref.getSid() %></td>				
		    <td><%=ref.getSname()%></td>
			<td><%=ref.getCid()%></td>
		</tr>
		<%
		}
         		%> 
	</table>          
   

 <br> <br><br>          

    	              
<table border="4">
<tr>
			
<th> SUBJECTS FOR THE CLASS </th>
</tr>

	<%
for (Subject refss : listOfSubjects){
	
 %>
	<tr>	   
 <td> <%=refss.getSubname() %></td>
    
	</tr>
	<%
		}
	
	%> 
	</table>  
	
	 <br> <br><br>             
<table border="4">
		<tr>
			
			<th> TEACHERS FOR THE CLASS </th>
		</tr>

	<%
for (Teacher refs : listOfTeachers){
	
 %>
	<tr>	   
     <td> <%=refs.getTname() %></td>
    
		</tr>
		<%
		}
         }   
		%> 
	</table> 
 	
