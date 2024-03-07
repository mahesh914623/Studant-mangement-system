<%@page import="Student_Dao.Ser_method"%>
<%@page import="Student_Bo.student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
  <form action="Handler_sevelet" method="get" >
  <input type="hidden" name="oparation" value=Search>
  <label>Student ID:</label><input type="text" name=id>
  <button type="submit">Serach</button>
  </form>

</body>
</html>