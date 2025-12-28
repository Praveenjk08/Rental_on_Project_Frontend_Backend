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

body{
  background:#ffffff;
  color:#1f2937;
}

/* ========== DASHBOARD WRAPPER ========== */
.dashboard{
  position:relative;
  min-height:calc(100vh - 160px);
  padding:60px 40px;
  overflow:hidden;
}

/* BACKGROUND IMAGE WITH OPACITY */
.dashboard::before{
  content:"";
  position:absolute;
  inset:0;
  background:url("image/carbg.jpg") center/cover no-repeat;
  opacity:0.25;                 /* 🔥 IMAGE OPACITY */
  z-index:-2;
}

/* GRADIENT OVERLAY */
.dashboard::after{
  content:"";
  position:absolute;
  inset:0;
  background:linear-gradient(
    rgba(224,242,254,0.65),
    rgba(252,231,243,0.65)
  );
  z-index:-1;
}

/* ========== WELCOME CARD ========== */
.welcome-card{
  max-width:900px;
  margin:0 auto 50px;
  padding:35px 40px;
  border-radius:22px;

  background:rgba(255,255,255,0.88);
  backdrop-filter:blur(10px);

  box-shadow:0 25px 50px rgba(0,0,0,0.2);
  text-align:center;
  transition:0.4s ease;
}

.welcome-card:hover{
  transform:translateY(-4px);
  box-shadow:0 35px 70px rgba(0,0,0,0.25);
}

.welcome-card h1{
  font-size:30px;
  margin-bottom:10px;

  background:linear-gradient(90deg,#38bdf8,#f472b6);
  -webkit-background-clip:text;
  -webkit-text-fill-color:transparent;
}

.welcome-card p{
  font-size:15px;
  color:#475569;
}

/* ========== DASHBOARD CARDS GRID ========== */
.cards{
  max-width:1100px;
  margin:auto;
  display:grid;
  grid-template-columns:repeat(auto-fit,minmax(260px,1fr));
  gap:30px;
}

/* ========== SINGLE CARD ========== */
.card{
  padding:32px 26px;
  border-radius:22px;
  text-align:center;
  cursor:pointer;

  background:linear-gradient(
    135deg,
    #e0f2fe,
    #fce7f3
  );

  box-shadow:0 20px 40px rgba(0,0,0,0.15);
  transition:0.45s ease;
}

/* HOVER EFFECT */
.card:hover{
  transform:translateY(-12px) scale(1.04);
  box-shadow:0 45px 90px rgba(56,189,248,0.45);
}

/* ICON */
.card-icon{
  font-size:42px;
  margin-bottom:15px;
}

/* TITLE */
.card h3{
  font-size:20px;
  margin-bottom:10px;
  color:#0f172a;
}

/* DESC */
.card p{
  font-size:14px;
  color:#334155;
  line-height:1.6;
}

/* BUTTON */
.card a{
  display:inline-block;
  margin-top:18px;
  text-decoration:none;
  padding:10px 24px;
  border-radius:25px;
  font-size:14px;
  font-weight:500;

  background:linear-gradient(135deg,#38bdf8,#f472b6);
  color:#ffffff;

  box-shadow:0 10px 25px rgba(0,0,0,0.2);
  transition:0.3s ease;
}

.card a:hover{
  transform:translateY(-2px);
  box-shadow:0 16px 35px rgba(0,0,0,0.25);
}

/* ========== RESPONSIVE ========== */
@media(max-width:768px){
  .dashboard{
    padding:40px 20px;
  }

  .welcome-card h1{
    font-size:24px;
  }
}
</style>
</head>

<body>

<!-- DASH NAVBAR -->
<div class="dashnav">
  <%@ include file="dashnavbar.jsp" %>
</div>

<%
User user2 = (User) session.getAttribute("user");
String username = (user2 != null) ? user2.getFullname() : "Guest";
%>

<!-- DASHBOARD CONTENT -->
<div class="dashboard">

  <!-- WELCOME SECTION -->
  <div class="welcome-card">
    <h1>Welcome, <%= username %> 👋</h1>
    <p>Manage your rentals, bookings, and profile all in one place.</p>
  </div>

  <!-- DASHBOARD ACTION CARDS -->
  <div class="cards">

    <!-- PROFILE -->
    <div class="card">
      <div class="card-icon">👤</div>
      <h3>My Profile</h3>
      <p>View and update your personal details and account information.</p>
      <a href="viewuser1?view=<%= (user2!=null)?user2.getU_id():0 %>">View Profile</a>
    </div>

    <!-- VEHICLES -->
    <div class="card">
      <div class="card-icon">🚗</div>
      <h3>Book a Vehicle</h3>
      <p>Explore available cars, bikes, and cycles for rent.</p>
      <a href="vehicledetails">View Vehicles</a>
    </div>

    <!-- BOOKINGS -->
    <div class="card">
      <div class="card-icon">📋</div>
      <h3>My Bookings</h3>
      <p>Track your current and previous rental bookings.</p>
      <a href="#">View Bookings</a>
    </div>

  </div>
</div>

<!-- FOOTER -->
<%@ include file="Footer.jsp" %>

</body>
</html>
