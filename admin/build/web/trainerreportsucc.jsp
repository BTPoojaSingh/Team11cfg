<%-- 
    Document   : trainerreportsucc
    Created on : Jul 27, 2014, 4:50:01 AM
    Author     : ROCK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*" %>
<% 
out.print("<body bgcolor=white text=black>");
try
{
	String trid=request.getParameter("trid");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");
Statement st=con.createStatement();
double average=0;
int fla=0;
ResultSet rs=st.executeQuery("select * from trainerfb where trid='"+trid+"'");
if(trid==null)
	{ out.print("no value");}
else
	{

while(rs.next())
	{
            fla++;
           average=average+Double.parseDouble(rs.getString(8));
           if(average<=5)
           {
                out.print("<html><body><table><tr><td>Teacherid:</td>"+"<td>"+rs.getString(1)+"</td></tr>");
                out.print("<tr><td>Average by teacher:</td><td BGCOLOR=red>"+rs.getString(8)+"</td></tr>");
           }
           else
           {
                out.print("<html><body><table><tr><td>Teacherid:</td>"+"<td>"+rs.getString(1)+"</td></tr>");
                out.print("<tr><td>Average by teacher:</td><td BGCOLOR=blue>"+rs.getString(8)+"</td></tr>");
               
           }
        }
        average=average/fla;
           if(average<=5)
           {
                out.print("<tr><td>average:</td>"+"<td BGCOLOR=red>"+average+"</td></tr>");
           }
           else
           {
                out.print("<tr><td>average:</td>"+"<td BGCOLOR=blue>"+average+"</td></tr>");
           }
		
	st.close();
con.close();
}
}
catch(Exception e)
{
out.print("<h1>"+e+"</h1>");
}
out.print(" </body>");
%>