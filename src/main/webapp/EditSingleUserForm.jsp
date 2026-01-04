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

/* ========== RESET ========== */
*{
  margin:0;
  padding:0;
  box-sizing:border-box;
  font-family:'Poppins',sans-serif;
}

body{
  min-height:100vh;
  display:flex;
  justify-content:center;
  align-items:center;
  background:#ffffff;
}

/* ========== PAGE WRAPPER ========== */
.edit-page{
  position:relative;
  width:100%;
  min-height:100vh;
  display:flex;
  justify-content:center;
  align-items:center;
  overflow:hidden;
}

/* BACKGROUND IMAGE (OPACITY CONTROL) */
.edit-page::before{
  content:"";
  position:absolute;
  inset:0;
  background:url("image/carbg.jpg") center/cover no-repeat;
  opacity:0.25;
  z-index:-2;
}

/* GRADIENT OVERLAY */
.edit-page::after{
  content:"";
  position:absolute;
  inset:0;
  background:linear-gradient(
    rgba(224,242,254,0.65),
    rgba(252,231,243,0.65)
  );
  z-index:-1;
}

/* ========== FORM CARD ========== */
form{
  width:420px;
  background:rgba(255,255,255,0.9);
  backdrop-filter:blur(10px);
  padding:35px 35px 30px;
  border-radius:22px;

  box-shadow:0 25px 50px rgba(0,0,0,0.2);
  transition:0.4s ease;
}

/* HOVER */
form:hover{
  transform:translateY(-6px);
  box-shadow:0 40px 80px rgba(0,0,0,0.25);
}

/* ========== TITLE ========== */
.form-title{
  text-align:center;
  margin-bottom:20px;
}

.form-title h2{
  font-size:26px;
  background:linear-gradient(90deg,#38bdf8,#f472b6);
  -webkit-background-clip:text;
  -webkit-text-fill-color:transparent;
}

.form-title p{
  font-size:14px;
  color:#475569;
}

/* USER ID */
.user-id{
  text-align:center;
  font-weight:600;
  color:#ec4899;
  margin-bottom:12px;
}

/* ========== INPUTS ========== */
label{
  font-size:13px;
  color:#334155;
}

input[type="text"],
input[type="email"],
input[type="password"],
input[type="tel"]{
  width:100%;
  padding:12px 14px;
  margin-top:6px;
  margin-bottom:14px;
  border-radius:14px;
  border:1px solid #cbd5f5;
  outline:none;
  transition:0.3s ease;
}

input:focus{
  border-color:#38bdf8;
  box-shadow:0 0 0 2px rgba(56,189,248,0.25);
}

/* ========== BUTTONS ========== */
.actions{
  display:flex;
  gap:14px;
  margin-top:15px;
}

/* UPDATE BUTTON */
.actions input[type="submit"]{
  flex:1;
  padding:12px;
  border:none;
  border-radius:22px;
  font-size:15px;
  font-weight:600;
  cursor:pointer;
  color:#ffffff;

  background:linear-gradient(135deg,#38bdf8,#f472b6);
  box-shadow:0 12px 25px rgba(0,0,0,0.2);
  transition:0.3s ease;
}

.actions input[type="submit"]:hover{
  transform:translateY(-2px);
  box-shadow:0 18px 35px rgba(0,0,0,0.25);
}

/* BACK BUTTON */
.back-btn{
  flex:1;
  text-align:center;
  text-decoration:none;
  padding:12px;
  border-radius:22px;
  font-size:15px;
  font-weight:500;

  background:linear-gradient(135deg,#bae6fd,#fbcfe8);
  color:#1f2937;

  box-shadow:0 10px 22px rgba(0,0,0,0.15);
  transition:0.3s ease;
}

.back-btn:hover{
  background:linear-gradient(135deg,#38bdf8,#f472b6);
  color:white;
  transform:translateY(-2px);
}

/* ========== RESPONSIVE ========== */
@media(max-width:480px){
  form{
    width:90%;
    padding:30px 22px;
  }
}
</style>
</head>

<body>

<%
User user = (User)request.getAttribute("editusers");
%>

<div class="edit-page">

  <form action="update1" method="get">

    <div class="form-title">
      <h2>Edit Profile</h2>
      <p>Update your personal information</p>
    </div>

    <div class="user-id">
      User ID : <%= user.getU_id() %>
    </div>

    <input type="hidden" name="uid" value="<%=user.getU_id()%>">

    <label>User Name</label>
    <input type="text" name="name" value="<%=user.getFullname()%>" required>

    <label>Email</label>
    <input type="email" name="email" value="<%=user.getEmail()%>" required>

    <label>Password</label>
    <input type="password" name="pass" value="<%=user.getPass()%>" required>

    <label>Phone Number</label>
    <input type="tel" name="ph" value="<%=user.getPhone()%>" required>

    <div class="actions">
      <input type="submit" value="Update Profile">
      <a href="dash.jsp" class="back-btn">Back to Dashboard</a>
    </div>

  </form>

</div>

</body>
</html>
