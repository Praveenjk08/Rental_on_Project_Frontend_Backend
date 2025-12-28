<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>

<style>
/* ========== GLOBAL ========== */
*{
  margin:0;
  padding:0;
  box-sizing:border-box;
  font-family:"Poppins","Segoe UI",sans-serif;
}

body{
    min-height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    position:relative;
    overflow:hidden;

    background:
      linear-gradient(
        rgba(224,242,254,0.5),
        rgba(252,231,243,0.5)
      ),
      url("image/rideon-logo.jpg");

    background-size:cover;
    background-position:center;
}

/* ========== LOGIN CARD ========== */
.login-container{
  width:380px;
  background:rgba(255,255,255,0.75);
  backdrop-filter:blur(10px);
  border-radius:22px;
  padding:35px 30px;
  box-shadow:0 30px 60px rgba(0,0,0,0.18);
}

/* TITLE */
.login-container h2{
  text-align:center;
  margin-bottom:25px;
  font-size:28px;

  background:linear-gradient(90deg,#38bdf8,#f472b6);
  -webkit-background-clip:text;
  -webkit-text-fill-color:transparent;
}

/* INPUT GROUP */
.input-group{
  margin-bottom:18px;
}

.input-group input{
  width:100%;
  padding:12px 15px;
  border-radius:14px;
  border:1px solid #cbd5f5;
  outline:none;
  font-size:14px;
  background:#ffffff;
  transition:0.3s ease;
}

.input-group input:focus{
  border-color:#38bdf8;
  box-shadow:0 0 0 2px rgba(56,189,248,0.25);
}

/* BUTTON */
.login-btn{
  width:100%;
  padding:12px;
  margin-top:10px;
  border:none;
  border-radius:22px;
  font-size:15px;
  font-weight:600;
  cursor:pointer;
  color:#ffffff;

  background:linear-gradient(
    135deg,
    #38bdf8,
    #f472b6
  );

  box-shadow:0 12px 25px rgba(0,0,0,0.2);
  transition:0.3s ease;
}

.login-btn:hover{
  transform:translateY(-3px);
  box-shadow:0 18px 35px rgba(0,0,0,0.25);
}

/* FOOT NOTE */
.note{
  text-align:center;
  margin-top:18px;
  font-size:13px;
  color:#475569;
}
</style>

</head>
<body>

<!-- OPTIONAL: If you want header -->
<%-- <%@ include file="Header.jsp" %> --%>

<div class="login-container">

  <h2>Admin Login</h2>

  <form action="adminlog" method="post">

    <div class="input-group">
      <input type="email"
             name="aname"
             placeholder="Enter your email"
             required>
    </div>

    <div class="input-group">
      <input type="password"
             name="apass"
             placeholder="Enter your password"
             required>
    </div>

    <button type="submit" class="login-btn">
      Admin Login
    </button>

  </form>

  <div class="note">
    Authorized administrators only
  </div>

</div>

<!-- OPTIONAL: If you want footer -->
<%-- <%@ include file="Footer.jsp" %> --%>

</body>
</html>
