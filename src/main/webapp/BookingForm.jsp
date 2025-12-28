<%@page import="com.servlet.Dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Booking Details</title>

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

/* BACKGROUND IMAGE */
.page::before{
  content:"";
  position:absolute;
  inset:0;
  background:url("image/carbg.jpg") center/cover no-repeat;
  opacity:0.25;
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

/* ========== FORM CARD ========== */
form{
  width:480px;
  background:rgba(255,255,255,0.9);
  backdrop-filter:blur(10px);
  padding:35px 35px 30px;
  border-radius:22px;

  box-shadow:0 25px 50px rgba(0,0,0,0.2);
  transition:0.4s ease;
}

form:hover{
  transform:translateY(-6px);
  box-shadow:0 40px 80px rgba(0,0,0,0.25);
}

/* ========== TITLE ========== */
.form-title{
  text-align:center;
  margin-bottom:22px;
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

/* ========== LABELS & INPUTS ========== */
label{
  font-size:13px;
  color:#334155;
}

input,
select{
  width:100%;
  padding:12px 14px;
  margin-top:6px;
  margin-bottom:14px;
  border-radius:14px;
  border:1px solid #cbd5f5;
  outline:none;
  transition:0.3s ease;
}

input:focus,
select:focus{
  border-color:#38bdf8;
  box-shadow:0 0 0 2px rgba(56,189,248,0.25);
}

input[readonly]{
  background:#f1f5f9;
}

/* ========== BUTTONS ========== */
.actions{
  display:flex;
  gap:14px;
  margin-top:18px;
}

/* PROCEED BUTTON */
.actions button{
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

.actions button:hover{
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
@media(max-width:500px){
  form{
    width:90%;
    padding:30px 22px;
  }
}
</style>
</head>

<body>

<%
User user = (User)session.getAttribute("user");
int vid = Integer.parseInt(request.getParameter("vid"));
double price = Double.parseDouble(request.getParameter("price"));
%>

<div class="page">

  <form action="bookservlet" method="post">

    <div class="form-title">
      <h2>Booking Details</h2>
      <p>Confirm your rental information</p>
    </div>

    <!-- Hidden User ID -->
    <input type="hidden" name="uid" value="<%=user.getU_id()%>">

    <label>Vehicle ID</label>
    <input type="number" name="vid" value="<%=vid%>" readonly>

    <label>Date & Time</label>
    <input type="date" name="date" value="<%=java.time.LocalDate.now()%>" readonly>

    <label>Start Date</label>
    <input type="date" name="sdate" required>

    <label>End Date</label>
    <input type="date" name="edate" required>

    <label>Total Amount</label>
    <input type="number" name="am" value="<%=price%>" readonly>

    <label>Total Days</label>
    <input type="number" name="days" placeholder="Enter total days" required>

    <label>Government ID Type</label>
    <select name="govern-type" required>
      <option value="">Select ID Type</option>
      <option>AdharCard</option>
      <option>PanCard</option>
      <option>DrivingLicence</option>
    </select>

    <label>Government ID Number</label>
    <input type="text" name="gid" placeholder="Enter Government ID" required>

    <div class="actions">
      <button type="submit">Proceed to Payment</button>
      <a href="dash.jsp" class="back-btn">Back to Dashboard</a>
    </div>

  </form>

</div>

</body>
</html>
