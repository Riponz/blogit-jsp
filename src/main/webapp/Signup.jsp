<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BlogIt - Signup</title>
</head>
<body>
<div style="width=100vw; height:100vh; display:flex;
justify-content:center; align-items:center;">

<form action="SignupAction.jsp" method="post" style="padding:30px; display:flex;
flex-direction:column; justify-content:center; align-items:center;
border:2px solid black; border-radius:15px;">

<h1>Register</h1>
<input style="outline:none; margin:5px; padding:10px; border-radius:15px;"style="outline:none; margin:5px; padding:10px; border-radius:15px;"style="outline:none; margin:5px; padding:10px; border-radius:15px;"style="outline:none; margin:5px; padding:10px; border-radius:15px;"style="outline:none; margin:5px; padding:10px; border-radius:15px;" type="text" name="name" placeholder="Enter Name...">
<input style="outline:none; margin:5px; padding:10px; border-radius:15px;"style="outline:none; margin:5px; padding:10px; border-radius:15px;"style="outline:none; margin:5px; padding:10px; border-radius:15px;"style="outline:none; margin:5px; padding:10px; border-radius:15px;"style="outline:none; margin:5px; padding:10px; border-radius:15px;" type="email" name="email" placeholder="Enter Email...">
<input style="outline:none; margin:5px; padding:10px; border-radius:15px;"style="outline:none; margin:5px; padding:10px; border-radius:15px;"style="outline:none; margin:5px; padding:10px; border-radius:15px;"style="outline:none; margin:5px; padding:10px; border-radius:15px;"style="outline:none; margin:5px; padding:10px; border-radius:15px;" type="number" name="phoneno" placeholder="Enter Phone No...">
<input style="outline:none; margin:5px; padding:10px; border-radius:15px;"style="outline:none; margin:5px; padding:10px; border-radius:15px;"style="outline:none; margin:5px; padding:10px; border-radius:15px;"style="outline:none; margin:5px; padding:10px; border-radius:15px;"style="outline:none; margin:5px; padding:10px; border-radius:15px;" type="password" name="password" placeholder="Enter Password...">

<%
String m= request.getParameter("msg");

if("error".equals(m)){

%>
<div style="color:red;">Something went wrong!</div>
<%
}else{
	
}
%>

<input style="width:100px; outline:none; margin-top:10px; margin-bottom:5px; padding:10px; border-radius:15px;" type="submit" value="register">

<div>Already have an account? <a href="Login.jsp">Login</a></div>

</form>

</div>
</body>
</html>