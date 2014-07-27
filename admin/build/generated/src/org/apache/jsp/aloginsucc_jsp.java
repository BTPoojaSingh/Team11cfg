package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class aloginsucc_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
 
out.print("<body bgcolor=white text=black>");
try
{
	String userid=request.getParameter("userid");
        System.out.println("conn1");
String pwd=request.getParameter("pwd");
System.out.println("conn2");
Class.forName("com.mysql.jdbc.Driver");
System.out.println("conn3");
Connection con=DriverManager.getConnection("jdbc:mysql://ec2-54-179-156-251.ap-southeast-1.compute.amazonaws.com:3306","root","code4good");
System.out.println("conn4");
Statement st=con.createStatement();
int fla=0;
ResultSet rs=st.executeQuery("select * from users where utype like admin");
if((userid==null)&&(pwd==null))
	{ out.print("no value");}
else
	{

while(rs.next())
	{
		out.print(rs.getString(1));
		out.print(rs.getString(2));

        if((userid.equals(rs.getString(1)))&&(pwd.equals(rs.getString(2))))
		{
		   fla=1;
		}
	}
		if(fla==1){
			out.print("<h1>"+"Successful login"+"</h1>");
                        
      out.write("<center>\n");
      out.write("\t\t\t<a href=\"aprofile.jsp\">Profile </a><br>\n");
      out.write("\t\t\t<a href=\"users.jsp\">Users</a><br>\n");
      out.write("\t\t\t<a href=\"trainingdet.jsp\">Training Details </a><br>\n");
      out.write("\t\t\t<a href=\"fbform.jsp\">Feedback Forms</a><br>\n");
      out.write("\t\t\t<center>\n");
      out.write("\t\t");
}
	    else
		out.print("<h1>"+"Wrong user id or password"+"</h1>");
	}
	st.close();
con.close();
}

catch(Exception e)
{
out.print("<h1>"+e.getMessage()+"</h1>");

System.out.print("Exception"+e.getStackTrace());
}
out.print(" </body>");

      out.write('\n');
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
