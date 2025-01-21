package com.project;

import java.sql.*;

public class DBConnect {
public static Connection Connect(){
	
	String url ="jdbc:mysql://localhost:3306/blogit";
	String user ="root";
	String pass ="root";
	
	try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection(url,user,pass);
	System.out.println("+++++++++++++++++++++++++ Successfull");
	
	return con;
	}catch(Exception e) {
		System.out.println(e);
		return null;
	}
}
}
