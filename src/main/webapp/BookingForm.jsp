<%@page import="com.servlet.Dto.User"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%User user=(User)session.getAttribute("user");
%>
<%int vid=Integer.parseInt(request.getParameter("vid")); 
double price=Double.parseDouble(request.getParameter("price"));
%>
<h1>BookingDetails</h1>
<form action="bookservlet" method="post">

 <br> <input type="hidden" value="<%=user.getU_id()%>" placeholder="Enter user id"  name="uid" required><br>
VehicleId: <br> <input type="number" placeholder="Enter vehicle id" name="vid" value="<%=vid%>" required><br>
DateANDTime: <br>  <input type="date" placeholder="Time and date" value="<%=java.time.LocalDate.now()%>" name="date" readonly><br>
StartDate: <br> <input type="date" placeholder="Enter the start date"  name="sdate" required="required"><br>
EndDate: <br> <input type="date" placeholder="Enter the last date" name="edate" required="required"><br>
TotalAmount: <br> <input type="number" placeholder="Total amount" value="<%=price%>" name="am" required="required"><br>
TotalDays: <br> <input type="number" placeholder="Total Days" name="days" required="required">
<br>
<label>Government-id-Type</label>
<br>
<select name="govern-type" required="required" >
<option>AdharCard</option>
<option>PanCard</option>
<option>DrivingLicence</option>
</select>
<br>
GovernmentId: <br>
<input type="text" placeholder="Enter governmentId" name="gid" required="required"> 
<br>

<button type="submit">Click Here To Proceed For Payment</button>
</form>

</body>
</html>
