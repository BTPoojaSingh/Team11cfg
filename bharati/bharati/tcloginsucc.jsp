<%-- 
    Document   : tcloginsucc
    Created on : Jul 27, 2014, 1:22:02 AM
    Author     : ROCK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page session="true" %>

<% 
out.print("<body bgcolor=white text=black>");
try
{
	String userid=request.getParameter("userid");
String pwd=request.getParameter("pwd");
String utype=request.getParameter("utype");
session.setAttribute("userid",userid);
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");
Statement st=con.createStatement();
int fla=0;
session.setAttribute(userid,"userid");
ResultSet rs=st.executeQuery("select * from users");
if((userid==null)&&(pwd==null))
	{ out.print("no value");}
else
	{

while(rs.next())
	{
		

        if((userid.equals(rs.getString(1)))&&(pwd.equals(rs.getString(2))))
		{
		   fla=1;
		}
	}
		if(fla==1){
			out.print("<h1>"+"Successful login"+"</h1>"); %><center>
			<a href="tcprofile.jsp">Profile </a><br>
			<a href="fbform.jsp">Feedback Forms</a><br>
                        <a href="trainerreport_tc.jsp">Trainer Report</a>
			<center>
		<%}
	    else
		out.print("<h1>"+"Wrong user id or password"+"</h1>");
	}
	st.close();
con.close();
}

catch(Exception e)
{
out.print("<h1>"+e+"</h1>");
}
out.print(" </body>");
%>
