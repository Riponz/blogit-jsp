<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.project.DBConnect" %>
<%@ page import="java.sql.*" %>
<%@ page import="jakarta.servlet.http.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BlogIt</title>
<style>
body{
margin:0;
padding:0;
background-color:#A9A9A9;
}
.post{
padding:5px 0 15px 15px;
width:100%;
height:150px;
background-color:#A9A9A9;
display:grid;
grid-template-columns: 1fr 1fr 2fr 3fr 1fr;
align-items:center;
border-bottom: 2px solid black;
}
.active{
	text-decoration:none;
	text-decoration:underline;
	color:grey;
	font-weight:900;
}
</style>
<link rel="stylesheet" href="active.css">
</head>
<body>

<%

Cookie[] cookies = request.getCookies();
int t=0;

if(cookies != null){
	
	for(Cookie cookie : cookies){
		if(cookie.getName().equals("blogitid")){
			t=1;
		}else{
			System.out.println("nothing");
		}
	}
}

if(t==0){
%>
<!-- response.sendRedirect("Login.jsp"); -->
<nav style="background-color:white; user-select:none; display:flex; justify-content:space-between; align-items:center; width:100%; height:15vh;">
<a href="index.jsp" style="width:100%"><img src="images/logo.png" alt="BlogIt-logo" style="width:10%;"></a>
<div style=" width:15%; display:flex; justify-content:space-evenly; align-items:center;">
<h2><a style="color:black;" href="Login.jsp">login</a></h2>
<h2><a style="color:black;" href="Signup.jsp">signup</a></h2>
</div>
</nav>
	
<%
}else{
%>

<nav style="background-color:white; user-select:none; display:flex; justify-content:space-between; align-items:center; width:100%; height:15vh;">
<a href="index.jsp" style="width:100%"><img src="images/logo.png" alt="BlogIt-logo" style="width:10%;"></a>
<div style=" width:40%; display:flex; justify-content:space-evenly; align-items:center;">
<h2 class="active"><a style="color:grey;" href="index.jsp">home</a></h2>
<h2><a style="color:black;" href="Posts.jsp">posts</a></h2>
<h2><a style="color:black;" href="CreatePost.jsp">new</a></h2>
<h2><a style="color:black;" href="Account.jsp">accounts</a></h2>
<h2><a style="color:black;" href="LogoutAction.jsp">logout</a></h2>
</div>
</nav>

<%
}

%>

<%

Connection con = DBConnect.Connect();
String sql = "Select * from posts";

Statement st = con.createStatement();

ResultSet rs = st.executeQuery(sql);

while(rs.next()){
%>
<div class="posts" style="width:100%; overflow:hidden;">

<div class="post">
<div class="read-more" style="font-weight:bold;"><span style="font-weight:normal;">By-</span> <br><%= rs.getString("author") %></div>
<div class="topic"><%= rs.getString("topic1") %>, <%= rs.getString("topic2") %>, <%= rs.getString("topic3") %></div>
<div class="title" style="font-size:2rem; font-weight:bold;"><%= rs.getString("title") %></div>
<div class="content" style="padding:20px"><%= rs.getString("content") %></div>
<div class="date" style="padding-left:10px;"><%= rs.getDate("date") %></div>
</div>

</div>
<%	
	
}


%>




</body>
</html>