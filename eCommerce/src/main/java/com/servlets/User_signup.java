package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

import com.connection.DbConnection;
import com.dao.UserDao;
import com.dataObjects.User;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/User_signup")
public class User_signup extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException  {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		
		try (PrintWriter out = response.getWriter()) {
			UserDao udao = new UserDao(DbConnection.getConnection());
			if (udao.userSignUp(username,email, password)) {
				response.sendRedirect("login.jsp");
			} else {
				out.println("User is not added");
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		
	}
}
