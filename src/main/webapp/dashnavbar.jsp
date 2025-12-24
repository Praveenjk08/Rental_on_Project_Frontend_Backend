<%@page import="com.servlet.Dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style >

*
{
padding: 0px;
margin: 0px;
}
.parent
{
height:100px;
display: flex;
align-items: center;
justify-content: space-around;
background: #2C3E50;
}

.child2
{
height:100px;
width:30%;
padding: 15px 25px;
display: flex;
align-items: center;
justify-content: space-between;
color: white; 
padding-right: 0px;
padding-left: 40px;
}
a{
color: white;
text-decoration: none;
font-size: 20px;
}

.child1
{
height: 100px;

}
h1
{
color: white;
}

img
{
height:80px; 
position: relative;
padding-left: 0px;

}



</style>
</head>
<body>
<%User user1=(User)session.getAttribute("user"); 

%>
<div class="parent">

<div class="child1">

<img alt="" src="rentalvehiclelogo.jpg">
</div>
<div class="child2">
<a href="viewuser1?view=<%=user1.getU_id()%>">Profile</a>
 
 <a href="vehicledetails">VehicleDetails</a>
 <%-- <a href="LogoutUser">Logout</a> --%>
 <a href="<%=request.getContextPath()%>/LogoutUser">Logout</a>


</div>
</div>


</body>
</html>