<%@page import="com.servlet.Dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Dashboard</title>

<style>
/* ========== RESET ========== */
*{
  margin:0;
  padding:0;
  box-sizing:border-box;
  font-family:"Poppins","Segoe UI",sans-serif;
}

/* ========== NAVBAR CONTAINER ========== */
.parent{
  height:90px;
  display:flex;
  align-items:center;
  justify-content:space-between;
  padding:0 50px;

  /* SAME INDEX THEME */
  background:linear-gradient(
    135deg,
    #e0f2fe,
    #fce7f3
  );

  box-shadow:0 10px 30px rgba(0,0,0,0.12);
}

/* ========== LEFT (LOGO) ========== */
.child1{
  display:flex;
  align-items:center;
}

.child1 img{
  height:65px;
  border-radius:50%;
  box-shadow:0 6px 15px rgba(0,0,0,0.2);
}

/* ========== RIGHT LINKS ========== */
.child2{
  display:flex;
  align-items:center;
  gap:20px;
}

/* LINKS AS BUTTONS */
.child2 a{
  text-decoration:none;
  font-size:15px;
  font-weight:500;
  color:#1f2937;

  padding:10px 22px;
  border-radius:25px;

  background:linear-gradient(
    135deg,
    #bae6fd,
    #fbcfe8
  );

  box-shadow:0 8px 18px rgba(0,0,0,0.15);
  transition:0.3s ease;
}

/* HOVER EFFECT */
.child2 a:hover{
  transform:translateY(-3px);
  background:linear-gradient(
    135deg,
    #38bdf8,
    #f472b6
  );
  color:#ffffff;
}

/* ========== RESPONSIVE ========== */
@media(max-width:900px){
  .parent{
    flex-direction:column;
    height:auto;
    padding:20px;
    gap:15px;
  }

  .child2{
    flex-wrap:wrap;
    justify-content:center;
  }
}
</style>
</head>

<body>

<%
User user1 = (User)session.getAttribute("user");
%>

<div class="parent">

  <!-- LOGO -->
  <div class="child1">
    <img src="image/rideon-logo.jpg" alt="RideOn Logo">
  </div>

  <!-- LINKS -->
  <div class="child2">
    <a href="viewuser1?view=<%=user1.getU_id()%>">Profile</a>
    <a href="vehicledetails">Vehicle Details</a>
    <a href="<%=request.getContextPath()%>/LogoutUser">Logout</a>
  </div>

</div>

</body>
</html>
