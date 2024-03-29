package com.ray.ComplaintController;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.ray.Connection.JdbcConnection;


public class Mail {
	int complaintid;
	public boolean SendMail(String to) throws SQLException {
		JdbcConnection conn=new JdbcConnection();
		Connection con=conn.Connect();
		PreparedStatement ps1=con.prepareStatement("select complaintID from complaint where email=?");
	    ps1.setString(1, to);
	    ResultSet rs=ps1.executeQuery();
	    if(rs.next()) {
	    	complaintid=rs.getInt(1);
	    }
		String from="podcognizant@gmail.com";
		String pass="Password@12345";
		String host = "smtp.gmail.com";
		boolean mail_status=false;
		Properties properties=System.getProperties();
		properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.port", "465");
        properties.put("mail.smtp.ssl.enable", "true");
        properties.put("mail.smtp.auth", "true");
		
        Session session = Session.getInstance(properties, new javax.mail.Authenticator() {

            protected PasswordAuthentication getPasswordAuthentication() {

                return new PasswordAuthentication("podcognizant@gmail.com", "Password@12345");

            }

        });
        session.setDebug(true);
		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(from));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			 message.setSubject("Complaint Registered");
			
			 message.setText("Complaint Registered Sucessfully. Complaint Id: " + complaintid);
			 System.out.println("sending...");
			 Transport.send(message);
			mail_status=true;
			
		}catch (MessagingException mex) {
			mex.printStackTrace();
			// TODO: handle exception
		}
		return mail_status;
		
	}

}
