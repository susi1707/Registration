<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AddStudent</title>
</head>
<body>
<h3>Register</h3>




 <form:form action="savestudent" modelAttribute="student">
        FirstName: <form:input path="firstName" />
        <br><br>  
        LastName: <form:input path="lastName" />
  <br><br> 

<button value="submit">Submit</button>
</form:form>	
   

</body>
</html>