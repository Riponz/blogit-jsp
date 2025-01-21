<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.project.DBConnect" %>
<%@ page import="java.sql.*" %>
<%@ page import="jakarta.servlet.http.*" %>


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
	response.sendRedirect("Login.jsp");
}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BlogIt - New Post</title>
<style>
body{
overflow:hidden;
margin:0;
padding:0;
background-color:#A9A9A9;
}
.post-container{
margin-top:20px;
width:100vw;
height:max-content;
padding: 20px 10px;
display:flex;
flex-direction: column;
justify-content:space-evenly;
align-items:center;
}
button {
  display:flex;
  justify-content:center;
  align-items:center;
  margin-top:20px;
  width: 80px;
  height: 40px;
  color: #fff;
  font-weight: bold;
  cursor: pointer;
  transition: all 0.3s ease;
  position: relative;
  display: inline-block;
  outline: none;
  border-radius: 5px;
  border: 2px solid #212529;
  background: grey;
}
button:hover {
  background: #fff;
  color: #212529
}
.textfield{
  display:flex;
  justify-content:space-between;
  align-items:center;
  width: 75%;
  height:max-content;
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
<h2 class="active"><a style="color:grey;" href="CreatePost.jsp">new</a></h2>
<h2><a style="color:black;" href="Account.jsp">accounts</a></h2>
<h2><a style="color:black;" href="LogoutAction.jsp">logout</a></h2>
</div>
</nav>


<form action="CreatePostAction.jsp" method="post" class="post-container">

<div style="width:100%; margin:0px 0px 20px 0px; display:flex;justify-content:center; align-items:center;">
<input name="title" style="width:72.5%; outline:none; border:2px solid black; border-radius:15px; padding:20px;" placeholder="Title goes here..." >
</div>

<div class="textfield">
<textarea name="content" style="outline:none; border:2px solid black; border-radius:15px; padding:20px;" placeholder="Yours blog goes here..." rows="20" cols="115"></textarea>

<div style="height:347px; display:flex; flex-direction:column; justify-content:space-between; align-items:start;">
<input name="topic1" placeholder="Topic 1..." style="outline:none; border:2px solid black; border-radius:15px; padding:20px; placeholder="Topic 1">
<input name="topic2" placeholder="Topic 2..." style="outline:none; border:2px solid black; border-radius:15px; padding:20px; placeholder="Topic 2">
<input name="topic3" placeholder="Topic 3..." style="outline:none; border:2px solid black; border-radius:15px; padding:20px; placeholder="Topic 3">
</div>

</div>

<div class="button">
<button><img style="width:1.5rem;" src="images/send.png" alt="send-logo"></button>
</div>
</form>

<%

String msg = request.getParameter("msg");
if("error".equals(msg)){
	%>
	<script type="text/javascript">
	alert("oops! somehting went wrong.")
	</script>
	<%
}


%>

</body>
</html>