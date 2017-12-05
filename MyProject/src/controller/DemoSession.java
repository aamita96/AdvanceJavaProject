package controller;
import java.sql.*;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;

/**
 * Servlet implementation class DemoSession
 */
@WebServlet("/DemoSession")
public class DemoSession extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		HttpSession session=request.getSession();
		session.removeAttribute("username");
		session.invalidate();
		response.sendRedirect("login.jsp");
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int f=0;
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		try{
	           Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/smdp","root","");
			System.out.println("Connected Successfully.");
			String query="select * from std_login";
			Statement stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery(query);
			if(username.equals("admin")&&password.equals("admin")){
				HttpSession session=request.getSession();
        		session.setAttribute("username",username);
        		response.sendRedirect("admin.jsp");
        		return;
			}
			while(rs.next()){
				String uname=rs.getString("user_id");
		          //user_id is the coloumn name in the database table 
		          String pass=rs.getString("password");
		         //password is the coloumn name in the database table
		          if(username.equals(uname)&&pass.equals(password)){
		        	
		        	  	f=1;
		        		HttpSession session=request.getSession();
		        		session.setAttribute("username",username);
		        		response.sendRedirect("welcome.jsp");
		        		return;
		        
		        		
		          }
			}
			
			if(f==0)
			{
				request.setAttribute("message","Account is invalid.");
	  			RequestDispatcher rD= request.getRequestDispatcher("login.jsp");
	  			rD.include(request, response);
			}
			conn.close();
			System.out.println("Database Connection closed.");
		}
		catch(Exception e){
			System.out.println("Can't Find Database server!");
			System.err.println(e);
		}
		
		
	}

}
