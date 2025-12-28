<%@page import="com.servlet.Dto.Vehicles"%>
<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vehicles</title>

<style>
body{
    font-family: Arial, sans-serif;
    background:#f4f6f9;
    margin:0;
    padding:20px;
}

/* ===== TOP BAR ===== */
.top-bar{
    display:grid;
    grid-template-columns: 1fr 1fr 1fr;
    align-items:center;
    margin-bottom:30px;
}

.top-bar h1{
    color:#2c3e50;
}

/* SEARCH */
.search-box{
    display:flex;
    justify-content:center;
    gap:6px;
}

.search-box input{
    width:260px;
    padding:10px 14px;
    border-radius:6px;
    border:1px solid #ccc;
    outline:none;
}

/* BACK BUTTON */
.back-btn{
    text-align:right;
}

.back-btn a{
    text-decoration:none;
    padding:10px 18px;
    border-radius:6px;
    background:#34495e;
    color:white;
    font-size:14px;
}

.back-btn a:hover{
    background:#2c3e50;
}

/* ===== VEHICLE GRID ===== */
.vehicle-container{
    display:grid;
    grid-template-columns: repeat(3, 1fr);   /* 🔥 3 cards per row */
    gap:30px;
}

/* CARD */
.vehicle-card{
    background:white;
    border-radius:14px;
    padding:18px;
    min-height:480px;                         /* 🔥 height increased */
    box-shadow:0 6px 20px rgba(0,0,0,0.12);
    transition:0.3s ease;
}

.vehicle-card:hover{
    transform:translateY(-6px);
}

/* IMAGE */
.vehicle-card img{
    width:100%;
    height:200px;                             /* 🔥 bigger image */
    object-fit:cover;
    border-radius:12px;
    border:2px solid #e0e0e0;
    margin-bottom:12px;
}

/* INFO */
.info-item{
    margin:6px 0;
    font-size:15px;
    color:#343434;
}

.label{
    font-weight:bold;
    color:#2c3e50;
}

/* BUTTONS */
.btn{
    padding:10px 14px;
    border-radius:6px;
    border:none;
    cursor:pointer;
    font-size:14px;
    margin-top:12px;
}

.book-btn{
    background:#27ae60;
    color:white;
}

.book-btn:hover{
    background:#1e8449;
}

.details-btn{
    background:#2980b9;
    color:white;
    margin-left:6px;
}

.details-btn:hover{
    background:#1f618d;
}

/* RESPONSIVE */
@media(max-width:1000px){
    .vehicle-container{
        grid-template-columns:repeat(2,1fr);
    }
}

@media(max-width:650px){
    .vehicle-container{
        grid-template-columns:1fr;
    }
    .top-bar{
        grid-template-columns:1fr;
        gap:15px;
        text-align:center;
    }
    .back-btn{
        text-align:center;
    }
}
</style>
</head>

<body>

<%
List<Vehicles> vlist = (List<Vehicles>) session.getAttribute("vl");
%>

<!-- ===== TOP BAR ===== -->
<div class="top-bar">

    <h1>Available Vehicles</h1>

    <div class="search-box">
        <input type="text" id="searchText" placeholder="Search by brand, model, color">
    </div>

    <div class="back-btn">
        <a href="dash.jsp">← Back to Dashboard</a>
    </div>

</div>

<!-- ===== VEHICLE LIST ===== -->
<div class="vehicle-container" id="vehicleContainer">

<% for(Vehicles vehicles : vlist){ %>

<div class="vehicle-card">

    <img src="image/<%=vehicles.getImage_url()%>">

    <!-- MINIMUM DETAILS -->
    <div class="info-item"><span class="label">ID:</span> <%=vehicles.getVehicle_id()%></div>
    <div class="info-item"><span class="label">Brand:</span> <%=vehicles.getBrand()%></div>
    <div class="info-item"><span class="label">Color:</span> <%=vehicles.getColor()%></div>
    <div class="info-item"><span class="label">Model:</span> <%=vehicles.getModel()%></div>

    <!-- EXTRA DETAILS -->
    <div class="extra-details" style="display:none;">
        <div class="info-item"><span class="label">Type:</span> <%=vehicles.getVehicle_type()%></div>
        <div class="info-item"><span class="label">Fuel:</span> <%=vehicles.getFuel_type()%></div>
        <div class="info-item"><span class="label">Mileage:</span> <%=vehicles.getMilage()%></div>
        <div class="info-item"><span class="label">Year:</span> <%=vehicles.getYear()%></div>
        <div class="info-item"><span class="label">Price/Day:</span> ₹<%=vehicles.getPrice_per_day()%></div>
        <div class="info-item"><span class="label">Status:</span> <%=vehicles.getStatus()%></div>
    </div>

    <!-- ACTIONS -->
    <a class="btn book-btn"
       href="BookingForm.jsp?vid=<%=vehicles.getVehicle_id()%>&price=<%=vehicles.getPrice_per_day()%>">
       Book Now
    </a>

    <button class="btn details-btn" onclick="toggleDetails(this)">
        View Details
    </button>

</div>

<% } %>

</div>

<!-- ===== JAVASCRIPT ===== -->
<script>
/* TOGGLE DETAILS */
function toggleDetails(btn){
    const extra = btn.parentElement.querySelector(".extra-details");
    if(extra.style.display === "none"){
        extra.style.display = "block";
        btn.innerText = "Hide Details";
    }else{
        extra.style.display = "none";
        btn.innerText = "View Details";
    }
}

/* SEARCH FILTER (NO 404) */
document.getElementById("searchText").addEventListener("keyup", function(){
    const value = this.value.toLowerCase();
    const cards = document.querySelectorAll(".vehicle-card");

    cards.forEach(card=>{
        card.style.display =
            card.innerText.toLowerCase().includes(value)
            ? "block"
            : "none";
    });
});
</script>

</body>
</html>
