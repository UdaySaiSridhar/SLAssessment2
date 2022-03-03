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
      
       <a href="Classes.jsp">Classes</a>
      <a href="Administrative.jsp">Administrative</a>
      <a href="Students.jsp">Students</a>
      <a href="Teachers.jsp">Teachers</a>
   
   <h3>Subjects List</h3> 
      <sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/learnersacademy" user="root" password="mysql@5143" />
     
      <sql:query var="rs" dataSource="${db}"> select * from Subjects </sql:query>
      
      <table border = "1.5" width = "auto">
      
           <th>id</th>
           <th>name</th>
           <th>shortcut</th>
           
      <c:forEach items="${rs.rows}" var="Subjects">
      
      <tr>
           <td><c:out value="${Subjects.id}"></c:out></td>
           <td><c:out value="${Subjects.name}"></c:out></td>
           <td><c:out value="${Subjects.shortcut}"></c:out> </td>
           
      </tr>
      </c:forEach> 
      </table>
   
   
   <form action="Logout" method="post">
       <input type="submit" value="Logout">
       </form>
       </center>
</body>
</html>