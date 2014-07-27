<%-- 
    Document   : tlogin
    Created on : Jul 27, 2014, 1:21:01 AM
    Author     : ROCK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>

<title> Login Page </title>
    </head>
<body>
<form action="tcloginsucc.jsp" method="post">
<center>
Username: <input type="text" name="userid"><br>
Password:  <input type="password" name="pwd"><br>
utype: <input type="text" name="utype"><br>

<input type="submit" value="submit">
<input type="reset" value="reset">
</center>
</form>
</body>
</html>