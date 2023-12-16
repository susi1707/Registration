<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EditStudent</title>
</head>
<body>
<h3>Register Edit</h3>

 <form:form action="/savestudent" modelAttribute="student"> 
 id: <form:hidden path="id" value="${student.id}"/> 
        Name: <form:input path="name" value="${student.name}"/>         
        <br><br>  
        City: <form:input path="city" value="${student.city}" />  
        <br><br> 
       Country: 
        <select id="country" name="country">
            <c:forEach items="${mapCountries}" var="country">
                <option value="${country.name}">${country.name}</option>
            </c:forEach>
        </select> 

<button value="submit">Submit</button>
</form:form>	
   

</body>
</html>