package com.financialtracker.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ConnectionProvider {
 private static Connection con;
 public static Connection getConnection() {
	 
	 try {
		 if(con == null) {
			 Class.forName("com.mysql.jdbc.Driver");
			 con = DriverManager.getConnection("jdbc:mysql://localhost/financialtracker","root","root");
			 
		 }
		 
	 }catch(Exception e) {
		 e.printStackTrace();
	 }
	 
	return con;
	 
 }
 public static void main(String[] args) {
	ConnectionProvider p1 = new ConnectionProvider();
	Connection val = getConnection();
	System.out.println(val);
}


}