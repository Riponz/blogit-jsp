<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BlogIt</title>
</head>
<body>
<div style="width=100vw; height:100vh; display:flex;
justify-content:center; align-items:center;">

<form action="LoginAction.jsp" method="post" style="padding:30px; display:flex;
flex-direction:column; justify-content:center; align-items:center;
border:2px solid black; border-radius:15px;">
<h1>Login</h1>
<input name="email" style="outline:none; margin:5px; padding:10px; border-radius:15px;" type="text" placeholder="email...">
<input name="password" style="outline:none; margin:5px; padding:10px; border-radius:15px;" type="password" placeholder="password...">
<button style="width:100px; outline:none; margin-top:10px; margin-bottom:5px; padding:10px; border-radius:15px;" type="submit">login</button>

<div>Don't have an account? <a href="Signup.jsp">Register</a></div>

</form>

</div>
</body>
</html>