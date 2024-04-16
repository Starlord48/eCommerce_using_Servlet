package com.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {
	static String url = "jdbc:mysql://localhost:3306/e_commerce";
	static String userName = "root";
	static String password = "07@ug200One";
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		return DriverManager.getConnection(url, userName, password);
	}
}
