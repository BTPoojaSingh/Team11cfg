<%-- 
    Document   : trainerreport
    Created on : Jul 27, 2014, 4:25:47 AM
    Author     : ROCK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*" %>
<%@page session="true" %>

<html>
    <head>

<title> Login Page </title>
    </head>
<body>
<form action="trainerreportsucc.jsp" method="post">
Trainer id: <input type="text" name="trid"><br>

<input type="submit" value="submit">
<input type="reset" value="reset">
</form>
</body>
</html>
