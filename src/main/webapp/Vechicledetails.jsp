<%@page import="com.servlet.Dto.Vehicles"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%List<Vehicles> vlist=(List<Vehicles>)request.getAttribute("vl"); %>

<table border="2" cellspacing="5px" cellpadding="5px">
<tr>
<td colspan="11" style="text-align:center;">Vehcile_Details</td>
</tr>
 <tr>
 <td>Vehicle_Id</td>
 <td>Vehicle_Type</td>
 <td>Brand</td>
 <td>Model</td>
 <td>Year</td>
 <td>Price_Per_Day</td>
 <td>Fuel_Type</td>
 <td>Milage</td>
 <td>Color</td>
 <td>Status</td>
 <td>Vehicle_Image</td>
 </tr>
 
 <%for(Vehicles vehicles:vlist)
	 {
	 %>
	 
	 <tr>
	 <td><%=vehicles.getVehicle_id()%></td>
	 <td><%=vehicles.getVehicle_type()%></td>
	 <td><%=vehicles.getBrand()%></td>
	 <td><%=vehicles.getModel()%></td>
	 <td><%=vehicles.getYear()%></td>
	 <td><%=vehicles.getPrice_per_day()%></td>
	 <td><%=vehicles.getFuel_type()%></td>
	 <td><%=vehicles.getMilage()%></td>
	 <td><%=vehicles.getColor()%></td>
	 <td><%=vehicles.getStatus()%></td>
	 <td><%=vehicles.getImage_url()%></td>
	
	 
	 
	 
	 </tr>


<%} %>
</table>

</body>
</html>