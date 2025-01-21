<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.project.DBConnect" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="jakarta.servlet.http.*" %>
<%@ page import="java.net.URLDecoder" %>



<%

String userid ="";
String name = null;

Cookie[] cookies = request.getCookies();
int t=0;

if(cookies != null){
	
	for(Cookie cookie : cookies){
		if(cookie.getName().equals("blogitid")){
			userid = cookie.getValue();
		}else if(cookie.getName().equals("name")){
			name = URLDecoder.decode(cookie.getValue(), "UTF-8");
		}
	}
}

String title = request.getParameter("title");
String content = request.getParameter("content");
String topic1 = request.getParameter("topic1");
String topic2 = request.getParameter("topic2");
String topic3 = request.getParameter("topic3");

try{
	Connection con = DBConnect.Connect();
	String sql = "INSERT INTO posts (userid, title, content, author, topic1, topic2, topic3, date) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
	
	PreparedStatement ps = con.prepareStatement(sql);
	
	ps.setInt(1, Integer.parseInt(userid));
	ps.setString(2, title);
	ps.setString(3, content);
	ps.setString(4, name);
	ps.setString(5, topic1);
	ps.setString(6, topic2);
	ps.setString(7, topic3);
	
	java.util.Date date = new java.util.Date(); // Current date
    java.sql.Date sqlDate = new java.sql.Date(date.getTime());
    ps.setDate(8, sqlDate);
    
    ps.executeUpdate();
    
    response.sendRedirect("index.jsp");
	
}catch(Exception e){
	System.out.println(e);
    response.sendRedirect("CreatePost.jsp?msg=error");
}

%>