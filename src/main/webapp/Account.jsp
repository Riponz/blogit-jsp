<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.project.DBConnect" %>
<%@ page import="java.sql.*" %>
<%@ page import="jakarta.servlet.http.*" %>
<%@ page import="java.net.URLDecoder" %>


<%

Cookie[] cookies = request.getCookies();
int t=0;
String name = null;
String phone = null;
String email = null;

if(cookies != null){
	
	for(Cookie cookie : cookies){
		switch (cookie.getName()) {
		case "blogitid":
            t=1;
            break;
		case "name":
            name = URLDecoder.decode(cookie.getValue(), "UTF-8");
            break;
        case "email":
            email = cookie.getValue();
            break;
        case "phone":
            phone = cookie.getValue();
            break;
    }
	}
}

if(t==0){
	response.sendRedirect("Login.jsp");
}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BlogIt - <%= name %></title>
<style>
body{
margin:0;
padding:0;
background-color:#A9A9A9;
user-select:none;
}
.account-details{
margin-top:20px;
font-size:2rem;
width:100vw;
height:max-content;
display:flex;
justify-content:center;
align-items:center;
}
td{
padding:15px;
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

<nav style="background-color:white; user-select:none; display:flex; justify-content:space-between; align-items:center; width:100%; height:15vh;">
<a href="index.jsp" style="width:100%"><img src="images/logo.png" alt="BlogIt-logo" style="width:10%;"></a>
<div style=" width:40%; display:flex; justify-content:space-evenly; align-items:center;">
<h2><a style="color:black;" href="index.jsp">home</a></h2>
<h2><a style="color:black;" href="Posts.jsp">posts</a></h2>
<h2><a style="color:black;" href="CreatePost.jsp">new</a></h2>
<h2 class="active"><a style="color:grey;" href="Account.jsp">accounts</a></h2>
<h2><a style="color:black;" href="LogoutAction.jsp">logout</a></h2>
</div>
</nav>


<div class="account-details">

<table  style="text-size:3rem;">
<tr class="name">
<td style="font-weight:bold;">Name :</td>
<td><%= name %></td>
</tr>
<tr class="phone">
<td style="font-weight:bold;">Phone Number :</td>
<td><%= phone %></td>
</tr>
<tr class="email">
<td style="font-weight:bold;">Email :</td>
<td><%= email %></td>
</tr>
<tr class="logout">
<td colspan="2" style="text-align:center;">
<a href="LogoutAction.jsp">
<button style="border-radius:10px; width:max-content;height:max-content; padding:8px 15px; font-size:1.8rem;">logout</button>
</a>
</td>
</tr>
</table>

</div>



</body>
</html>