<%@page import="com.servlet.Dto.Booking"%>
<%@page import="com.servlet.Dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%User user=(User)session.getAttribute("user"); 
Booking booking=(Booking)request.getAttribute("id");
%>
<form action="" method="post">

</form>
<%=booking.getBook_Id()%>
Hello
</body>
</html>