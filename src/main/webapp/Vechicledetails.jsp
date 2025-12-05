<%@page import="com.servlet.Dto.Vehicles"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vehicles</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background: #f4f6f9;
        margin: 0;
        padding: 20px;
    }

    h1 {
        text-align: center;
        color: #2c3e50;
        margin-bottom: 25px;
    }

    /* Grid layout */
    .vehicle-container {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
        gap: 20px;
        padding: 10px;
    }

    /* Card */
    .vehicle-card {
        background: white;
        border-radius: 12px;
        padding: 15px;
        box-shadow: 0 4px 15px rgba(0,0,0,0.1);
        transition: 0.3s;
    }

    .vehicle-card:hover {
        transform: scale(1.03);
    }

    .vehicle-card img {
        width: 100%;
        height: 160px;
        object-fit: cover;
        border-radius: 10px;
        border: 2px solid #e0e0e0;
        margin-bottom: 10px;
    }

    .info-item {
        margin: 6px 0;
        font-size: 15px;
        color: #343434;
    }

    .label {
        font-weight: bold;
        color: #2c3e50;
    }

    /* Buttons */
    .btn {
        display: inline-block;
        padding: 8px 12px;
        border-radius: 6px;
        text-decoration: none;
        color: white;
        font-size: 14px;
        margin-top: 10px;
        transition: 0.3s;
    }

    .book-btn {
        background: #27ae60;
    }
    .book-btn:hover {
        background: #1e8449;
    }

    .details-btn {
        background: #2980b9;
        margin-left: 5px;
    }
    .details-btn:hover {
        background: #1f618d;
    }
</style>

</head>
<body>

<%
    List<Vehicles> vlist = (List<Vehicles>) session.getAttribute("vl");
%>

<h1>Available Vehicles</h1>

<div class="vehicle-container">

<% for (Vehicles vehicles : vlist) { %>

    <div class="vehicle-card">

        <!-- Vehicle Image -->
        <img src="image/<%=vehicles.getImage_url()%>">

        <!-- Vehicle Info -->
        <div class="info-item"><span class="label">Brand:</span> <%=vehicles.getBrand()%></div>
        <div class="info-item"><span class="label">Model:</span> <%=vehicles.getModel()%></div>
        <div class="info-item"><span class="label">Type:</span> <%=vehicles.getVehicle_type()%></div>
        <div class="info-item"><span class="label">Fuel:</span> <%=vehicles.getFuel_type()%></div>
        <div class="info-item"><span class="label">Mileage:</span> <%=vehicles.getMilage()%></div>
        <div class="info-item"><span class="label">Year:</span> <%=vehicles.getYear()%></div>
        <div class="info-item"><span class="label">Color:</span> <%=vehicles.getColor()%></div>
        <div class="info-item"><span class="label">Price/Day:</span> ₹<%=vehicles.getPrice_per_day()%></div>
        <div class="info-item"><span class="label">Status:</span> <%=vehicles.getStatus()%></div>

        <!-- Buttons -->
        <a href="BookingForm.jsp" class="btn book-btn">Book Now</a>
        <a href="Vechicle1.jsp" class="btn details-btn">View Details</a>

    </div>

<% } %>

</div>

</body>
</html>
