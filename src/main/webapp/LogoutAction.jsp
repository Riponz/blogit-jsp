<%@ page import="java.sql.*, java.io.*" %>
<%@ page import="jakarta.servlet.http.*" %>


<%

Cookie cookies[] = request.getCookies();
if (cookies != null) {
    for (Cookie cookie : cookies) {
    	if(cookie.getName().equals("blogitid") ||
    			cookie.getName().equals("name") ||
    			cookie.getName().equals("phone") ||
    			cookie.getName().equals("email"))
        cookie.setMaxAge(0);
        response.addCookie(cookie);
    }
}

response.sendRedirect("index.jsp");


%>
