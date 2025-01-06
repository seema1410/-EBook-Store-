package com.DB;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	private static Connection conn;
	public static Connection getConn()
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ebook-app","root","ravi1609");
			
		}catch(Exception e) {
			System.err.println("An error occurred: " + e.getMessage());
		}
		return conn;
	}
	

}
