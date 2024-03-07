<%@page import="Student_Dao.Ser_method"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="Student_Bo.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
table,th,td{
border:1px solid;
border-collapse: collapse;
}
body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border: 1px solid #333;
            border-collapse: collapse;
            background-color: #fff;
        }

        th, td {
            border: 1px solid #333;
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: green;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }
</style>
</head>
<body>
<%
  List<student> al=Ser_method.datafetch();
%>
<h1>All student Detial</h1>
<table>
<tr><th>Id</th><th>Name</th><th>BOD</th><th>Address</th><th>course</th><th>Delete</th><th>Edit</th></tr>
<%for(student e:al){ %>
<tr>
<td> <%= e.getId() %> </td>
<td> <%= e.getName() %> </td>
<td> <%= e.getBOD() %> </td>
<td> <%= e.getAddress()%> </td>
<td> <%= e.getCourse() %> </td>
<td><a href="Handler_sevelet?oparation=delete&id=<%= e.getId()%>">Delete</a></td>
<td><a href="Handler_sevelet?oparation=editform&id=<%= e.getId()%>">edit</a></td>
</tr>
<%}%>
</table>
 

</body>
</html>