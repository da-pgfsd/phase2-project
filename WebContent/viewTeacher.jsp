<%@ page import="com.admin.portal.master, com.admin.portal.Teacher,java.util.List"
	language="java" contentType="text/html; charset=ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
<h1>Teacher Master</h1>
<br><br>
<%
	master obj = new master();
	List<Teacher> listOfTeachers = obj.viewTeacherData();

	%>
	<table border="2">
		<tr>
			<th>TEACHER ID</th>
			<th>TEACHER NAME</th>		
			<th> CLASS ID</th>
			<th> SUBJECT ID</th>
		</tr>

		<%
		for (Teacher ref : listOfTeachers) {
		%>
		<tr>
			<td><%=ref.getTid()%></td>
			<td><%=ref.getTname()%></td>
		   <td><%=ref.getCid()%></td>
			<td><%=ref.getSubid()%></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>