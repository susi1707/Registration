<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>
<h1>Home Page</h1>
<h3>Register Result</h3>

<table border=1>
	<tr>
		<th>Id</th>
		<th>firstName</th>
		<th>lastName</th>
		<th>Action</th>
	</tr>
	<tbody>
	
	<c:forEach items="${student}" var="students">
	<tr>
     <td>${students.id}</td> 
     <td>${students.firstName}</td>
     <td>${students.lastName}</td>
     <td> 
     
     <a href="/deleteStudent?id=${students.id}"><button >Delete</button></a>
     <a href="/edit?id=${students.id}"><button >Edit</button></a>
     </td>
     </tr>
     </c:forEach>
</tbody>

</table>
	
   
     
     
   
<a href ="/addstudent">addstudent</a>
</body>
</html>