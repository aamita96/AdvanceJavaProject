package controller;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;


/**
 * Servlet implementation class Signup
 */
@WebServlet("/Signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendRedirect("signup.jsp");
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*Personal Details*/
		String stname=request.getParameter("st_name");
		String stenroll=request.getParameter("st_enroll");
		String st_contact=request.getParameter("st_contact");
		String st_email=request.getParameter("st_email");
		String image=request.getParameter("image");
		String address=request.getParameter("address");
		String dob=request.getParameter("dob");
		String st_dept=request.getParameter("st_dept");
		String graduation=request.getParameter("graduation");
		/*Mothers Details*/
		String mt_name=request.getParameter("mt_name");
		String mt_des=request.getParameter("mt_des");
		String mt_contact=request.getParameter("mt_contact");
		String mt_email=request.getParameter("mt_email");
		/*Father Details*/
		String ft_name=request.getParameter("ft_name");
		String ft_des=request.getParameter("ft_des");
		String ft_contact=request.getParameter("ft_contact");
		String ft_email=request.getParameter("ft_email");
		/*Guardian Details*/
		String lg_name=request.getParameter("lg_name");
		String lg_contact=request.getParameter("lg_contact");
		String lg_email=request.getParameter("lg_email");
		/*Sibling Details*/
		String brothers=request.getParameter("brothers");
		String sisters=request.getParameter("sisters");
		String parent_sign=request.getParameter("parent_sign");
		String student_sign=request.getParameter("student_sign");
		
		
		try{
	           Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/smdp","root","");
			System.out.println("Database Connection Established.");
	        PreparedStatement insert =(PreparedStatement)conn.prepareStatement("INSERT INTO student(st_name,st_enroll,st_contact,st_email,image,address,dob,st_dept,graduation,mt_name,mt_des,mt_contact,mt_email,ft_name,ft_des,ft_contact,ft_email,lg_name,lg_contact,lg_email,brothers,sisters,parent_sign,student_sign) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
 
          
			/*String query2="insert into student(st_id,st_name,st_enroll,st_contact,st_email,image,address,dob"
					+ ",st_dept,graduation,mt_name,mt_des,mt_contact,mt_email,ft_name,ft_des"
					+ ",ft_contact,ft_email,lg_name,lg_contact,lg_email,brothers,sisters,parent_sign"
					+ ",student_sign) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";*/
			
			/*Insertion of Personal Details*/
			
			
			//insert =conn.prepareStatement(query);
			
			insert.setString(1,stname);
			insert.setString(2,stenroll);
			insert.setString(3,st_contact);
			insert.setString(4,st_email);
			insert.setString(5,image);
			insert.setString(6,address);
			insert.setString(7,dob);
			insert.setString(8,st_dept);
			insert.setString(9,graduation);
			
			/*Mother Details*/
			insert.setString(10,mt_name);
			insert.setString(11,mt_des);
			insert.setString(12,mt_contact);
			insert.setString(13,mt_email);
			
			/*Father Details*/
			insert.setString(14,ft_name);
			insert.setString(15,ft_des);
			insert.setString(16,ft_contact);
			insert.setString(17,ft_email);
			
			/*Guardians Details*/
			insert.setString(18,lg_name);
			insert.setString(19,lg_contact);
			insert.setString(20,lg_email);
			insert.setString(21,brothers);
			insert.setString(22,sisters);
			insert.setString(23,parent_sign);
			insert.setString(24,student_sign);
			
            insert.executeUpdate();
  			//request.setAttribute("message","Thank you for registration.");

            //JOptionPane.showMessageDialog(null,"Data have been inserted.");

			conn.close();
			//PrintWriter out=response.getWriter();
			//out.print(" alert('Thank you for registration.')");
			System.out.println("Data Has been inserted.");
		RequestDispatcher rD=request.getRequestDispatcher("login.jsp");
		rD.forward(request, response);
	}
		catch(Exception e){
			System.out.println("Cant't Connect to Database server.");
			System.err.println(e);
		}

	}
}
