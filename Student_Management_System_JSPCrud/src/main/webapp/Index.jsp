<%@page import="Student_Dao.Ser_method"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>

 body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
           
        }
        h1{
        text-align: center;
        font-family: fantasy;        }

        form {
            width: 30%;
            margin: 50px auto;
            background-color: rgba(255, 255, 255, 0.8); 
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5); 
            
        }

        input {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            box-sizing: border-box;
           
           
        }

        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width:100%;
        }

        button:hover {
            background-color: #45a049;
        }
</style>

</head>
<body>

 <form action="Handler_sevelet" method="get" >
 <h1>Sign UP</h1>
 <input type="hidden" name="oparation" value=insert >
 <b>Name:</b><input type="text" name=name required><br><br>
 <b>Date of Birth:</b><input type="date" name=date required><br><br>
 <b>Address:</b><input type="text" name=address required><br><br>
 <b>Course:</b><input type="text" name=course required><br><br>
 <button type="submit" >Submit</button>
 <p>Don't have an account?<a href="Login.jsp"> login</a></p>
</form>

</body>
</html>