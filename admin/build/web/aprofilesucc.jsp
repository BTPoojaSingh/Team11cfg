
<%@page import="java.sql.*" %>
<%@page session="true" %>
<% 
String aid=session.getAttribute("stuid");
String name=request.getParameter("name");
String phno=request.getParameter("phno");
String add=request.getParameter("add");
String email=request.getParameter("email");


out.print("<body bgcolor=white text=black >");
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");
Statement st=con.createStatement();
 				    st.executeUpdate("insert into admin(id,name,phno,add,email values('"+aid+"','"+name+"','"+phno+"','"+add+"','"+email+"')");				
						
st.close();
con.close();
}
catch(Exception e)
{
out.print("<h1>e</h1>");
}
out.print("</body>");
%>
