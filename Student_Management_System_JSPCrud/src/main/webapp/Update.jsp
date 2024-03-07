<%@page import="Student_Dao.Ser_method"%>
<%@page import="Student_Bo.student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Headland+One&family=Kavoon&display=swap" rel="stylesheet">
<style>
       body {
            font-family: Arial, sans-serif;
            background: url('https://thumbs.dreamstime.com/z/learning-management-system-wooden-cubes-abbreviation-lms-orange-background-top-view-266095679.jpg?ct=jpeg') center center fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }
        form {
            background-color: #fff -0,5;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 400px;
            margin-top: 20px;
        }

        h1 {
            color: #333;
            font-family: "Headland One", fantasy;
            font-weight: 400;
            font-style: normal;
            color: #3498db; /* Change this to your desired color */

            position:absolute;
            top:0%;
        }

        table {
            width: 100%;
            margin-bottom: 15px;
            border-collapse: collapse;
           
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        .atdr {
            font-weight: bold;
        }

        input[type="text"],
        input[type="date"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            box-sizing: border-box;
        }

        button {
            background-color: #4caf50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            margin-right: 10px;
        }

        button:hover {
            background-color: #45a049;
        }

        a {
        text-decoration: none;
        color: auqa;
        display: inline;
        text-align: left;
        margin-top: 10px;
        font-family:fantasy;
        font-size: 18px;
        position: absolute;
        top:5%;
        left: 0%;
    
    </style>

</head>
<body>
<% 
student Bo= new student();
Ser_method Dao=new Ser_method();
%>
<%
String pid=request.getParameter("id") ;


	int id=Integer.parseInt(pid);
	Bo=Ser_method.edit(id);
	
%>
<a href="Index.jsp">Back</a>
<h1>Update Student Detial</h1>

<form action="Handler_sevelet" method="get">
<input type="hidden" name="oparation" value=update>
<table>
<tr>
<td class="atdr"> ID:</td>
<td><input type="hidden" name=id value=<%= Bo.getId()%>></td>
</tr>
<tr>
<td class="atdr"> name:</td>
<td><input type="text" name=name value=<%= Bo.getName()%>></td>
</tr>
<tr>
<td class="atdr"> BOD:</td>
<td><input type="date" name=date value=<%= Bo.getBOD()%>  ></td>
</tr>
<tr>
<td class="atdr"> address:</td>
<td><input type="text" name=address value=<%= Bo.getAddress()%>  ></td>
</tr>
<tr>
<td class="atdr"> course:</td>
<td><input type="text" name=course value=<%= Bo.getCourse()%>></td>
</tr>
</table>
<button type="submit">Update</button>
<button type="reset">Reset</button>
</form>
</body>
</html>