
<%-- 
    Document   : tcloginsucc
    Created on : Jul 27, 2014, 1:22:02 AM
    Author     : ROCK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page session="true" %>
<!DOCTYPE html>
<%
    out.print("<body bgcolor=white text=black>");
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
Connection c=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");
                        String tid=request.getParameter("tid");
                       String trid=request.getParameter("trid");
			PreparedStatement ps=c.prepareStatement("insert into trainerfb values(?,?,?,?,?,?,?,?)");
			
			boolean flag=true;
			
                        
			int q1=(Integer.parseInt(request.getParameter("q1")));
			int q2=(Integer.parseInt(request.getParameter("q2")));
                        int q3=(Integer.parseInt(request.getParameter("q3")));
                        int q4=(Integer.parseInt(request.getParameter("q4")));
                        int q5=(Integer.parseInt(request.getParameter("q5")));
                        float avg=(q1+q2+q3+q4+q5)/5;
                        
			

				ps.setString(1,tid);
				ps.setString(2,trid);
				ps.setInt(3,q1);
				ps.setInt(4,q2);
				ps.setInt(5,q3);
				ps.setInt(6,q4);
				ps.setInt(7,q5);
                                ps.setFloat(8,avg);
				

				int n=ps.executeUpdate();
				if(n>0)
			   	   out.println("Updated");
				else
			   	   out.println("Please enter all the details");
                                	ps.close();
                                        c.close();
			
		}
                
		catch(Exception e)
		{
			out.print("<h1>"+e+"<h1>");
		}

%>
			
