package com.ray.LoginPageContoller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ray.ComplaintController.Mail;
import com.ray.Connection.JdbcConnection;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
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
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();  
		
		String email=request.getParameter("emailid");
		String password=request.getParameter("password");

		JdbcConnection conn=new JdbcConnection();
		Connection con=conn.Connect();
		
		try{
		    PreparedStatement ps1=con.prepareStatement("select * from registration where email=? and password=md(?)");
		    ps1.setString(1, email);
		    ps1.setString(2, password);
		    ResultSet rs=ps1.executeQuery();
		    if(rs.next()) {
		    	out.println("Sucessfully Login");
		    }
		    else {
		    	out.println("Your emailId and password incorrect");
	}

			}catch (Exception e) {
				// TODO: handle exception
				
			}
		}
}
