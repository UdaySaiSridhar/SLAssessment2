<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
      <h3>ADMINISTRAVTIVE PORTAL</h3>
      
      <a href="Classes.jsp">Classes</a><br>
      <a href="Subjects.jsp">Subjects</a><br>
      <a href="Students.jsp">Students</a><br>
      <a href="Teachers.jsp">Teachers</a><br>
       
       <form action="Logout" method="post">
       <input type="submit" value="Logout">
       </form>
       </center>
</body>
</html>