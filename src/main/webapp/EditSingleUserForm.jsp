<%@page import="com.servlet.Dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit User</title>

<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');

*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
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

/* Form Card */
form{
    width: 420px;
    background: rgba(255,255,255,0.95);
    padding: 30px;
    border-radius: 15px;
    box-shadow: 0 20px 40px rgba(0,0,0,0.4);
}

/* User ID */
form > :first-child{
    font-weight: 600;
    color: #ff5722;
    margin-bottom: 10px;
    display: block;
}

/* Labels */
form br{
    line-height: 2;
}

/* Inputs */
input[type="text"],
input[type="email"],
input[type="password"],
input[type="tel"]{
    width: 100%;
    padding: 10px 12px;
    margin-bottom: 15px;
    border-radius: 8px;
    border: 1px solid #ccc;
    outline: none;
    transition: 0.3s;
}

input:focus{
    border-color: #ff9800;
    box-shadow: 0 0 6px rgba(255,152,0,0.6);
}

/* Submit button */
input[type="submit"]{
    width: 100%;
    padding: 12px;
    background: linear-gradient(135deg, #ff9800, #ff5722);
    color: white;
    font-size: 16px;
    font-weight: 600;
    border: none;
    border-radius: 8px;
    cursor: pointer;
    transition: 0.3s;
}

input[type="submit"]:hover{
    box-shadow: 0 10px 20px rgba(255,87,34,0.5);
    transform: translateY(-2px);
}
</style>

</head>
<body>

<%User user=(User)request.getAttribute("editusers");%>

<form action="update1" method="get">
<%=user.getU_id()%>
<input type="hidden" placeholder="Enter the user id" name="uid" value="<%=user.getU_id()%>"><br>

UserName<br>
<input type="text" placeholder="Enter the user name" name="name" value="<%=user.getFullname()%>"><br>

UserEmail <br>
<input type="email" placeholder="Enter the user mail" name="email" value="<%=user.getEmail()%>"><br>

UserPassword <br>
<input type="password" placeholder="Enter your password" name="pass" value="<%=user.getPass()%>"><br>

UserPhoneNumber <br>
<input type="tel" placeholder="enter your phone" name="ph" value="<%=user.getPhone()%>">
<br>

<input type="submit" value="Edit1">
</form>

</body>
</html>
