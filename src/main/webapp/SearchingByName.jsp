<%@page import="com.servlet.Dto.Vehicles"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vehicle Details</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background: #f5f6fa;
        margin: 0;
        padding: 20px;
    }
    .container {
        width: 80%;
        margin: auto;
    }
    .title {
        text-align: center;
        font-size: 30px;
        color: #2c3e50;
        margin-bottom: 25px;
        font-weight: bold;
    }
    .vehicle-card {
        display: flex;
        background: white;
        padding: 25px;
        border-radius: 12px;
        box-shadow: 0px 4px 15px rgba(0,0,0,0.1);
        align-items: center;
        gap: 20px;
    }
    .vehicle-image img {
        border-radius: 10px;
        object-fit: cover;
        border: 2px solid #e1e1e1;
    }
    .vehicle-info {
        flex: 1;
    }
    .vehicle-info h2 {
        color: #2c3e50;
        margin: 0 0 10px 0;
    }
    .info-row {
        margin: 6px 0;
        font-size: 17px;
        color: #34495e;
    }
    .label {
        font-weight: bold;
        color: #222;
    }

    .description-box {
        margin-top: 25px;
        background: white;
        padding: 20px;
        border-radius: 10px;
        line-height: 1.6;
        color: #555;
        font-size: 16px;
        box-shadow: 0px 4px 15px rgba(0,0,0,0.08);
    }
</style>

</head>
<body>

<div class="container">

    <% Vehicles vehicles = (Vehicles) request.getAttribute("vljk"); %>

    <div class="title">Vehicle Details</div>

    <div class="vehicle-card">
        
        <div class="vehicle-image">
            <img src="image/<%=vehicles.getImage_url()%>" width="300" height="180">
        </div>

        <div class="vehicle-info">

            <h2><%=vehicles.getBrand()%> <%=vehicles.getModel()%> (<%=vehicles.getYear()%>)</h2>

            <div class="info-row">
                <span class="label">Vehicle ID:</span> <%=vehicles.getVehicle_id()%>
            </div>

            <div class="info-row">
                <span class="label">Type:</span> <%=vehicles.getVehicle_type()%>
            </div>

            <div class="info-row">
                <span class="label">Fuel Type:</span> <%=vehicles.getFuel_type()%>
            </div>

            <div class="info-row">
                <span class="label">Mileage:</span> <%=vehicles.getMilage()%>
            </div>

            <div class="info-row">
                <span class="label">Color:</span> <%=vehicles.getColor()%>
            </div>

            <div class="info-row">
                <span class="label">Status:</span> <%=vehicles.getStatus()%>
            </div>

            <div class="info-row">
                <span class="label">Price per Day:</span> ₹<%=vehicles.getPrice_per_day()%>
            </div>

        </div>
    </div>

    <div class="description-box">
        <h3 style="margin-top:0;">About Our Rental Service</h3>
        Welcome to our vehicle rental platform — designed with the standards of leading rental 
        websites. Our goal is to make your booking experience simple, fast, and trustworthy. 
        Each vehicle on our platform is verified, inspected, and maintained to ensure safety and comfort. 
        We provide transparent pricing, real-time availability, detailed specifications, and clean 
        vehicle previews so that you can choose confidently. With a smooth user interface and 
        reliable backend, we ensure an excellent rental experience from booking all the way to pickup.
    </div>

</div>

</body>
</html>
