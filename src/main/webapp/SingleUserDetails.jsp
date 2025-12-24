<%@page import="com.servlet.Dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Details</title>

<style>
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', Arial, Helvetica, sans-serif;
}

/* SAME BACKGROUND IMAGE */
body{
    min-height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    background:
        linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)),
        url("https://images.unsplash.com/photo-1502877338535-766e1452684a");
    background-size: cover;
    background-position: center;
}

/* Card */
.user-card{
    width: 420px;
    background: rgba(255,255,255,0.95);
    padding: 30px;
    border-radius: 15px;
    box-shadow: 0 20px 40px rgba(0,0,0,0.4);
}

/* Title */
.user-card h2{
    text-align: center;
    margin-bottom: 20px;
    color: #ff5722;
}

/* Info rows */
.info{
    margin-bottom: 12px;
    font-size: 14px;
    color: #444;
}

.info span{
    font-weight: 600;
    color: #000;
}

/* Action button */
.actions{
    margin-top: 25px;
    text-align: center;
}

.actions a{
    text-decoration: none;
    padding: 10px 25px;
    background: linear-gradient(135deg, #ff9800, #ff5722);
    color: white;
    font-size: 14px;
    font-weight: 600;
    border-radius: 8px;
    transition: 0.3s;
}

.actions a:hover{
    box-shadow: 0 8px 18px rgba(255,87,34,0.5);
    transform: translateY(-2px);
}
</style>

</head>
<body>

<%
User user = (User) request.getAttribute("userrod");
%>

<div class="user-card">
    <h2>User Details</h2>

    <div class="info"><span>User ID:</span> <%= user.getU_id() %></div>
    <div class="info"><span>Name:</span> <%= user.getFullname() %></div>
    <div class="info"><span>Email:</span> <%= user.getEmail() %></div>
    <div class="info"><span>Password:</span> <%= user.getPass() %></div>
    <div class="info"><span>Phone:</span> <%= user.getPhone() %></div>
    <div class="info"><span>Created At:</span> <%= user.getCurrDateTime() %></div>

    <div class="actions">
        <a href="edit1?e1=<%= user.getU_id() %>">Edit</a>
    </div>
</div>

</body>
</html>
