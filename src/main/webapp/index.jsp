<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rental Service</title>

<style>
/* =====================
   GLOBAL
===================== */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: "Segoe UI", "Poppins", Arial, sans-serif;
}

body {
    background: #f9fafb;
    color: #111827;
}

/* =====================
   HERO SECTION
===================== */
.hero {
    min-height: calc(100vh - 160px); /* header + footer safe */
    display: flex;
    align-items: center;
    justify-content: center;

    background:
    linear-gradient(
        rgba(17, 24, 39, 0.78),
        rgba(17, 24, 39, 0.88)
    ),
    url("https://images.unsplash.com/photo-1605559424843-9e4c228bf1c2");
    
    background-size: cover;
    background-position: center;
    padding: 20px;
}

/* =====================
   HERO CARD
===================== */
.hero-card {
    background: rgba(255, 255, 255, 0.12);
    backdrop-filter: blur(14px);
    padding: 50px 60px;
    border-radius: 16px;
    text-align: center;
    box-shadow: 0 25px 50px rgba(0,0,0,0.4);
    animation: fadeUp 1s ease;
    max-width: 700px;
}

/* =====================
   TEXT
===================== */
.hero-card h2 {
    font-size: 34px;
    color: #facc15;
    margin-bottom: 12px;
}

.hero-card p {
    font-size: 16px;
    color: #e5e7eb;
    margin-bottom: 30px;
}

/* =====================
   BUTTONS
===================== */
.btn-group {
    display: flex;
    justify-content: center;
    gap: 18px;
    flex-wrap: wrap;
}

.btn {
    padding: 14px 28px;
    font-size: 15px;
    border-radius: 10px;
    text-decoration: none;
    font-weight: 600;
    transition: 0.3s ease;
    color: #111827;
    background: #facc15;
}

.btn:hover {
    background: #fde047;
    transform: translateY(-3px);
}

/* Button variations */
.register-btn { background: #22c55e; color: #fff; }
.register-btn:hover { background: #16a34a; }

.login-btn { background: #3b82f6; color: #fff; }
.login-btn:hover { background: #2563eb; }

.admin-btn { background: #f97316; color: #fff; }
.admin-btn:hover { background: #ea580c; }

.admin-login-btn { background: #ef4444; color: #fff; }
.admin-login-btn:hover { background: #dc2626; }

/* =====================
   ANIMATION
===================== */
@keyframes fadeUp {
    from {
        opacity: 0;
        transform: translateY(30px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

/* =====================
   RESPONSIVE
===================== */
@media (max-width: 768px) {
    .hero-card {
        padding: 35px 25px;
    }

    .hero-card h2 {
        font-size: 26px;
    }
}
/* =====================
   VEHICLE INFO SECTION
===================== */
.vehicle-info {
    display: flex;
    gap: 20px;
    justify-content: center;
    flex-direction:column;
    margin-top: 30px;
    flex-wrap: wrap;
}

.vehicle-card {
    background: rgba(255, 255, 255, 0.15);
    backdrop-filter: blur(10px);
    padding: 20px 25px;
    border-radius: 14px;
    width: 220px;
    color: #e5e7eb;
    box-shadow: 0 12px 25px rgba(0,0,0,0.3);
    transition: 0.3s ease;
}

.vehicle-card span {
    font-size: 20px;
    font-weight: 600;
    color: #facc15;
    display: block;
    margin-bottom: 8px;
}

.vehicle-card p {
    font-size: 14px;
    color: #d1d5db;
}

.vehicle-card:hover {
    transform: translateY(-6px);
    background: rgba(255, 255, 255, 0.22);
}

</style>

</head>
<body>

<!-- HEADER / NAVBAR -->
<%@ include file="Header.jsp" %>

<!-- HERO -->
<div class="hero">
    <!--  <div class="hero-card">
        <h2>Welcome to Rental Service</h2>
        <p>
            Book cars & bikes easily with a fast, secure, and trusted rental platform.
        </p>

         <div class="btn-group">
            <a href="Register.jsp" class="btn register-btn">Register</a>
            <a href="login.jsp" class="btn login-btn">Login</a>
            <a href="adminreg.jsp" class="btn admin-btn">Admin Register</a>
            <a href="adminlogin.jsp" class="btn admin-login-btn">Admin Login</a>
        </div>
    </div>-->
    <h2 style="color: #D8B522;">Welcome to Rental Service</h2>

<p style="color: #D8B522;">
    Your one-stop solution for renting <b>Cars</b>, <b>Bikes</b>, and <b>Cycles</b>
    with ease, safety, and affordability.
</p>

<div class="vehicle-info">
    <div class="vehicle-card">
         <span>Cars</span>
        <p>Comfortable cars for family trips, office travel, and long journeys.</p>
    </div>

    <div class="vehicle-card">
         <span>Bikes</span>
        <p>Fast and fuel-efficient bikes for daily commute and quick travel.</p>
    </div>

    <div class="vehicle-card">
         <span>Cycles</span>
        <p>Eco-friendly cycles for fitness, short rides, and city exploration.</p>
    </div>
</div>
    
</div>

<!-- FOOTER -->
<%@ include file="Footer.jsp" %>

</body>
</html>
