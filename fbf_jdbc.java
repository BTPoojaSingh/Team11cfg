import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class regjdbc extends HttpServlet
{
	PreparedStatement ps;
	Connection c;
	
	public void init(ServletConfig config)
	{
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			c=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","System","anusha");
			ps=c.prepareStatement("insert into feedbackform values(?,?,?,?,?,?,?,?,?,?,?,?,)");
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		PrintWriter out=res.getWriter();
		try
		{	
			boolean flag=true;
			
			String name,mailid,city,img,path;
			int pin;
			double phno,amt;
			q1=req.getParameter("q1");
			q2=req.getParameter("q2");
			q3=req.getParameter("q3");
			q4=req.getParameter("q4");
			q5=req.getParameter("q5");
			q6=req.getParameter("q6");
			q7=req.getParameter("q7");
			q8=req.getParameter("q8");
			q9=req.getParameter("q9");
			

				ps.setString(1,tid);
				ps.setString(2,trid);
				ps.setString(3,q1);
				ps.setString(4,q2);
				ps.setString(5,q3);
				ps.setString(6,q4);
				ps.setString(7,q5);
				ps.setString(8,q6);
				ps.setString(9,q7);
				ps.setString(10,q8);
				ps.setString(11,q9);

				int n=ps.executeUpdate();
				if(n>0)
			   	   out.println("Account created");
				else
			   	   out.println("Please enter all the details");
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}
			