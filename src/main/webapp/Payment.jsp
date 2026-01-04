
<%@page import="com.servlet.Dto.Booking"%>
<%@page import="com.servlet.Dto.User"%>
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
Booking booking=(Booking)request.getAttribute("id");
double amount=(Double)request.getAttribute("price");
int vid=(Integer)request.getAttribute("pvid");
%>
<form action="paymentservlet" method="post">
<!-- VehcileId: -->
<input type="text" name="vid" value="<%=vid%>" readonly="readonly">
<!-- UserId: -->
<input type="text" name="uid" value="<%=user.getU_id()%>" readonly="readonly">
<!-- BookingId: -->
<input type="text" name="bid" value="<%=booking.getBook_Id()%>" readonly="readonly" >
Payment Type: <br>
<select name="type" >
<option>DEBIT</option>
<option>UPI</option>
<option selected="selected">CASH</option>
</select><br>

Payment Amount: <br>
<input type="text" name="am" value="<%=amount%>" readonly="readonly"><br>
<input type="text" name="pdate" value="<%=java.time.LocalDate.now()%>" readonly="readonly"><br>
<button type="submit">Payment</button>

</form>





</body>
</html>