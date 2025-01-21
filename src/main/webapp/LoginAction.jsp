<%@page import="java.net.URLEncoder"%>
<%@ page import="com.project.DBConnect" %>
<%@ page import="java.sql.*, java.io.*" %>
<%@ page import="jakarta.servlet.http.*" %>
<%@ page import="java.net.URLEncoder" %>


<%

String email = request.getParameter("email");
String password = request.getParameter("password");

try{
	Connection con = DBConnect.Connect();
	String sql = "Select * from users where email='"+email+"' and password='"+password+"'";
	 
	Statement st = con.createStatement();
    ResultSet rs = st.executeQuery(sql);
    int z=0;
    while(rs.next()){
    	z=1;
    	
    	String user = URLEncoder.encode(rs.getString("name"), "UTF-8");
    	
    	Cookie cid = new Cookie("blogitid",rs.getString("id"));
    	Cookie cname = new Cookie("name",user);
    	Cookie cphone = new Cookie("phone",rs.getString("phone"));
    	Cookie cemail = new Cookie("email",rs.getString("email"));
    	
    	response.addCookie(cid);
    	response.addCookie(cname);
    	response.addCookie(cphone);
    	response.addCookie(cemail);
    	
    	response.sendRedirect("index.jsp");
    }
    if(z==0){
    	response.sendRedirect("Login.jsp");
    }
}catch(Exception e){   	
	System.out.println(e);
    response.sendRedirect("Login.jsp");
}

%>