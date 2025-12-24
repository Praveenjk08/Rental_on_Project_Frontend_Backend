<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@page import="com.servlet.Dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>

<style>
/* Reset */
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* Full height */
html, body{
    height: 100%;
}

/* Dashboard background (SAME as login & register) */
.dash{
    height: 80%;
    display: flex;
    align-items: center;
    justify-content: center;

    background:
        linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)),
        url("https://images.unsplash.com/photo-1502877338535-766e1452684a");
    background-size: cover;
    background-position: center;
}

/* Welcome text */
h1{
    color: #ff9800;
    font-size: 28px;
    font-family: 'Poppins', sans-serif;
}
</style>

</head>
<body>

<div class="dashnav">
    <%@include file="dashnavbar.jsp"%>
</div>

<div class="dash">
<%
    User user2 = (User) session.getAttribute("user");
%>

<h1>
    Welcome to Rental On Service App <mark><%= (user2 != null) ? user2.getFullname() : "Guest" %></mark>
</h1>
</div>

<%@ include file="Footer.jsp" %>

</body>
</html>
