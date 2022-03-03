<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body><center>
<% 
      response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");    //It will not store the cache. It prevents back button issue.
      
      if(session.getAttribute("username")==null)
      {
    	  response.sendRedirect("Login.jsp");
      }
      %>
      
      <a href="Administrative.jsp">Administrative</a>
      <a href="Subjects.jsp">Subjects</a>
      <a href="Students.jsp">Students</a>
      <a href="Teachers.jsp">Teachers</a>


<h3>Classes Details</h3> 
      <sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/learnersacademy" user="root" password="mysql@5143" />
     
      <sql:query var="rs" dataSource="${db}"> select * from Classes </sql:query>
      
      <table border = "1.5" width = "auto">
      
      <th>id</th>
           <th>Section</th>
           <th>Teacher</th>
           <th>Subject</th>
           <th>Time</th>
      <c:forEach items="${rs.rows}" var="Classes">
      
      <tr>
           <td><c:out value="${Classes.id}"></c:out></td>
           <td><c:out value="${Classes.section}"></c:out></td>
           <td><c:out value="${Classes.Teacher}"></c:out> </td>
           <td><c:out value="${Classes.Subject}"></c:out></td>
           <td><c:out value="${Classes.Time}"></c:out></td>
      </tr>
      
      </c:forEach> 
      </table>


<form action="Logout" method="post">
       <input type="submit" value="Logout">
       </form>
</center>
</body>
</html>