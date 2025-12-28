<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Navbar</title>

<style>
/* ================= NAVBAR CONTAINER ================= */
.main{
  display:flex;
  align-items:center;
  justify-content:space-between;
  padding:0 40px;
  height:90px;

  /* LIGHT SKY BLUE + LIGHT PINK GRADIENT */
  background:linear-gradient(
    135deg,
    #e0f2fe,
    #fce7f3
  );

  box-shadow:0 10px 30px rgba(0,0,0,0.12);
}

/* ================= LEFT (LOGO) ================= */
.left a{
  font-size:26px;
  font-weight:700;
  text-decoration:none;

  background:linear-gradient(90deg,#38bdf8,#f472b6);
  -webkit-background-clip:text;
  -webkit-text-fill-color:transparent;
}

/* ================= RIGHT LINKS ================= */
.right{
  display:flex;
  gap:20px;
}

.right a{
  text-decoration:none;
  font-size:15px;
  font-weight:500;
  color:#1f2937;

  padding:10px 22px;
  border-radius:25px;

  /* BUTTON GRADIENT */
  background:linear-gradient(
    135deg,
    #bae6fd,
    #fbcfe8
  );

  box-shadow:0 8px 18px rgba(0,0,0,0.15);
  transition:0.3s ease;
}

/* HOVER EFFECT */
.right a:hover{
  transform:translateY(-3px);
  background:linear-gradient(
    135deg,
    #38bdf8,
    #f472b6
  );
  color:#ffffff;
}

/* ================= RESPONSIVE ================= */
@media(max-width:768px){
  .main{
    flex-direction:column;
    height:auto;
    padding:20px;
    gap:15px;
  }
}
</style>
</head>

<body>

<div class="main">

  <div class="left">
    <a href="index.jsp">RideOn</a>
  </div>

  <div class="right">
    <a href="login.jsp">User Login</a>
    <a href="dashboard.jsp">Dashboard</a>
  </div>

</div>

</body>
</html>
