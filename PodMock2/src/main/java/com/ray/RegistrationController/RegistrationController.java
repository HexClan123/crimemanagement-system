package com.ray.RegistrationController;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ray.ComplaintController.Mail;
import com.ray.Connection.JdbcConnection;


/**
 * Servlet implementation class RegistrationController
 */
@WebServlet("/RegistrationController")
public class RegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();  
		String fullname=request.getParameter("fullname");
		String email=request.getParameter("emailid");
		String age=request.getParameter("age");
		String password=request.getParameter("password");
		String mobile=request.getParameter("mobilenumber");
		String idno=request.getParameter("idno");

		JdbcConnection conn=new JdbcConnection();
		Connection con=conn.Connect();
		
		try{
		    PreparedStatement ps1=con.prepareStatement("select * from registration where email=?");
		    ps1.setString(1, email);
		    ResultSet rs=ps1.executeQuery();
		    if(rs.next()) {
		    	request.setAttribute("Registration", "Email id already exit");
		    }
		    else {
		    PreparedStatement ps = con.prepareStatement("insert into registration(fullname,email,age, password, mobile,idno) values(?,?,?,md5(?),?,?);");
		    ps.setString(1,fullname);
		    ps.setString(2,email);
		    ps.setString(3,age);
		    ps.setString(4,password);
		    ps.setString(5,mobile);
		    ps.setString(6,idno);
		    int x = ps.executeUpdate();
			
			if(x>0){
				
				request.setAttribute("Registration", "Sucessfully Registered");
				response.setContentType("text/html");
				String to=request.getParameter("emailid");
				Mail mail=new Mail();
				boolean mail_sent=mail.SendMail(to);
				if(mail_sent) {
					request.setAttribute("mail", "Mail Sucessfully Send");
					}
				else
					out.println("mail failed");
				}else{
					request.setAttribute("Registration", "Registration Failed");
					response.setContentType("text/html");
			 
		}
		    }
		}catch(Exception e){
			out.println(e);
		}
	
		RequestDispatcher rd=request.getRequestDispatcher("/register.jsp");
		rd.forward(request, response);
		
	

	}
}

