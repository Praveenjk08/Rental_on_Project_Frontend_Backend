<%@page import="com.servlet.Dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Details</title>

<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');

/* ========== RESET ========== */
*{
  margin:0;
  padding:0;
  box-sizing:border-box;
  font-family:'Poppins',sans-serif;
}

body{
  min-height:100vh;
  background:#ffffff;
}

/* ========== PAGE WRAPPER ========== */
.page{
  position:relative;
  min-height:100vh;
  display:flex;
  justify-content:center;
  align-items:center;
  overflow:hidden;
}

/* BACKGROUND IMAGE WITH OPACITY */
.page::before{
  content:"";
  position:absolute;
  inset:0;
  background:url("image/carbg.jpg") center/cover no-repeat;
  
  z-index:-2;
}

/* GRADIENT OVERLAY */
.page::after{
  content:"";
  position:absolute;
  inset:0;
  background:linear-gradient(
    rgba(224,242,254,0.65),
    rgba(252,231,243,0.65)
  );
  z-index:-1;
}

/* ========== USER CARD ========== */
.user-card{
  width:420px;
  background:rgba(255,255,255,0.9);
  backdrop-filter:blur(10px);
  padding:32px 30px;
  border-radius:22px;

  box-shadow:0 25px 50px rgba(0,0,0,0.2);
  transition:0.4s ease;
}

.user-card:hover{
  transform:translateY(-6px);
  box-shadow:0 40px 80px rgba(0,0,0,0.25);
}

/* TITLE */
.user-card h2{
  text-align:center;
  margin-bottom:22px;
  font-size:26px;

  background:linear-gradient(90deg,#38bdf8,#f472b6);
  -webkit-background-clip:text;
  -webkit-text-fill-color:transparent;
}

/* INFO ROWS */
.info{
  margin-bottom:12px;
  font-size:14px;
  color:#334155;
}

.info span{
  font-weight:600;
  color:#0f172a;
}

/* ACTION BUTTONS */
.actions{
  margin-top:25px;
  display:flex;
  gap:14px;
  justify-content:center;
}

/* EDIT */
.actions .edit{
  text-decoration:none;
  padding:10px 24px;
  border-radius:22px;
  font-size:14px;
  font-weight:500;

  background:linear-gradient(135deg,#38bdf8,#f472b6);
  color:#ffffff;

  box-shadow:0 10px 22px rgba(0,0,0,0.2);
  transition:0.3s ease;
}

/* BACK */
.actions .back{
  text-decoration:none;
  padding:10px 24px;
  border-radius:22px;
  font-size:14px;
  font-weight:500;

  background:linear-gradient(135deg,#bae6fd,#fbcfe8);
  color:#1f2937;

  box-shadow:0 10px 22px rgba(0,0,0,0.15);
  transition:0.3s ease;
}

/* HOVER */
.actions a:hover{
  transform:translateY(-2px);
  box-shadow:0 18px 35px rgba(0,0,0,0.25);
}

/* RESPONSIVE */
@media(max-width:480px){
  .user-card{
    width:90%;
    padding:28px 22px;
  }
}
</style>
</head>

<body>

<%
User user = (User) request.getAttribute("userrod");
%>

<div class="page">

  <div class="user-card">
    <h2>User Details</h2>

    <div class="info"><span>User ID:</span> <%= user.getU_id() %></div>
    <div class="info"><span>Name:</span> <%= user.getFullname() %></div>
    <div class="info"><span>Email:</span> <%= user.getEmail() %></div>
    <div class="info"><span>Password:</span> <%= user.getPass() %></div>
    <div class="info"><span>Phone:</span> <%= user.getPhone() %></div>
    <div class="info"><span>Created At:</span> <%= user.getCurrDateTime() %></div>

    <div class="actions">
      <a href="edit1?e1=<%= user.getU_id() %>" class="edit" onclick="return confirm('Are you sure you want to edit this movie?')">Edit</a>
      <a href="dash.jsp" class="back" >Back to Dashboard</a>
    </div>
  </div>

</div>

</body>
</html>
