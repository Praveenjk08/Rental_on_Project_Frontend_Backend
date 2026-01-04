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

.page{
  position:relative;
  min-height:100vh;
  display:flex;
  justify-content:center;
  align-items:center;
  overflow:hidden;
}

.page::before{
  content:"";
  position:absolute;
  inset:0;
  background:url("image/carbg.jpg") center/cover no-repeat;
  opacity:0.25;
  z-index:-2;
}

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

form{
  width:480px;
  background:rgba(255,255,255,0.9);
  backdrop-filter:blur(10px);
  padding:35px;
  border-radius:22px;
  box-shadow:0 25px 50px rgba(0,0,0,0.2);
}

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

label{
  font-size:13px;
  color:#334155;
}

input, select{
  width:100%;
  padding:12px 14px;
  margin-top:6px;
  margin-bottom:14px;
  border-radius:14px;
  border:1px solid #cbd5f5;
}

input[readonly]{
  background:#f1f5f9;
}

.actions{
  display:flex;
  gap:14px;
}

.actions button{
  flex:1;
  padding:12px;
  border:none;
  border-radius:22px;
  font-size:15px;
  font-weight:600;
  cursor:pointer;
  color:white;
  background:linear-gradient(135deg,#38bdf8,#f472b6);
}

.back-btn{
  flex:1;
  text-align:center;
  text-decoration:none;
  padding:12px;
  border-radius:22px;
  background:#e5e7eb;
  color:#111827;
}
</style>
</head>

<body>

<%
User user = (User)session.getAttribute("user");
int vid = Integer.parseInt(request.getParameter("vid"));
double price = Double.parseDouble(request.getParameter("price"));
String name = request.getParameter("name");
String model = request.getParameter("model");
String type = request.getParameter("type");
%>

<div class="page">

<form action="bookservlet" method="post">

  <div class="form-title">
    <h2>Booking Details</h2>
  </div>

  <!-- Hidden User -->
  <input type="hidden" name="uid" value="<%=user.getU_id()%>">

  <label>Vehicle ID</label>
  <input type="number" name="vid" value="<%=vid%>" readonly>

  <label>Vehicle Name</label>
  <input type="text" value="<%=name%>" readonly>

  <label>Vehicle Model</label>
  <input type="text" value="<%=model%>" readonly>

  <label>Vehicle Type</label>
  <input type="text" value="<%=type%>" readonly>

  <label>Booking Date</label>
  <input type="date" value="<%=java.time.LocalDate.now()%>" readonly>

  <label>Start Date</label>
  <input type="date" name="sdate" id="sdate" required>

  <label>End Date</label>
  <input type="date" name="edate" id="edate" required>

  <label>Total Days</label>
  <input type="number" name="days" id="days" readonly required>

  <label>Price Per Day</label>
  <input type="number"  name="price" id="price" value="<%=price%>" readonly>

  <label>Total Amount</label>
  <input type="number" name="am" id="amount" readonly required>

  <label>Government ID Type</label>
  <select name="govern-type" required>
    <option value="">Select</option>
    <option>AadharCard</option>
    <option>PanCard</option>
    <option>DrivingLicence</option>
  </select>

  <label>Government ID Number</label>
  <input type="text" name="gid" required>

  <div class="actions">
    <button type="submit">Proceed to Payment</button>
    <a href="dash.jsp" class="back-btn">Back</a>
  </div>

</form>

</div>

<script>
document.getElementById("sdate").addEventListener("change", calculate);
document.getElementById("edate").addEventListener("change", calculate);

function calculate() {
    let s = document.getElementById("sdate").value;
    let e = document.getElementById("edate").value;
    let price = document.getElementById("price").value;

    if(s && e){
        let start = new Date(s);
        let end = new Date(e);
        let diff = (end - start) / (1000 * 60 * 60 * 24);

        if(diff >= 0){
            let days = diff + 1;
            document.getElementById("days").value = days;
            document.getElementById("amount").value = days * price;
        } else {
            alert("End date must be after start date");
            document.getElementById("days").value = "";
            document.getElementById("amount").value = "";
        }
    }
}
</script>

</body>
</html>
