<%@ page import="com.project.DBConnect"%>
<%@ page import="java.sql.*"%>

<%

String name = request.getParameter("name");
String email = request.getParameter("email");
long phone = Long.parseLong(request.getParameter("phoneno"));
String password = request.getParameter("password");

try{
	Connection con = DBConnect.Connect();
	String sql = "INSERT INTO users (name, phone, email, password) VALUES (?, ?, ?,?)";
	
	PreparedStatement ps = con.prepareStatement(sql);
    ps.setString(1, name);
    ps.setLong(2, phone);
    ps.setString(3, email);
    ps.setString(4, password);
    ps.executeUpdate();
    System.out.println("Successfull+++++++++++");
    response.sendRedirect("Login.jsp");
}catch(SQLIntegrityConstraintViolationException e){
	System.out.println(e);
    response.sendRedirect("Signup.jsp?msg=error");
}

%>