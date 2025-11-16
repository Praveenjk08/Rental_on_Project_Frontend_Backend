<%@page import="java.time.LocalDate"%>
<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="reg" method="post">
<input type="text" placeholder="Enter the username" name="name" required>
<input type="email" placeholder="Enter the email" name="email"  required>
<input type="password" placeholder="Enter the password" name="pass" required>
<input type="tel" placeholder="Enter the PhoneNumber" name="ph" required>
<input type="date" placeholder="Enter the date" name="date" value="<%=java.time.LocalDate.now()%>" readonly>
<button type="submit">Registaion</button>
</form>

</body>
</html>