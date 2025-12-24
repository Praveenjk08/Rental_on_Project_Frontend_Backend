<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rental Service</title>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: "Segoe UI", Arial, sans-serif;
}

.navbar {
    width: 100%;
    height: 80px;
    background-color: #1f2933;
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 0 60px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.15);
}

.logo-box {
    display: flex;
    align-items: center;
}

.logo-box img {
    height: 70px;
    width: auto;
    object-fit: contain;
}

.navbar-links a {
    text-decoration: none;
    color: #e5e7eb;
    font-size: 16px;
    margin-left: 28px;
    position: relative;
}
img
{
backgroun
}

.navbar-links a:hover {
    color: #facc15;
}

h1 {
    transition: color 0.3s ease, transform 0.3s ease;
    font-size: 25px;
}

h1:hover {
    color: black;
    transform: scale(1.05);
}


</style>
</head>

<body>

<div class="navbar">

    <!-- LOGO IMAGE -->
    <div class="logo-box">
        <a href="index.jsp">
        
            <img src="image/rentalvehiclelogo.jpg" alt="Vehicle Rental Logo">
        </a>
        <h1 style="color:orange ">Rental Vehcile App</h1>
    </div>

    <!-- LINKS -->
    <div class="navbar-links">
        <a href="index.jsp">Home</a>
        <a href="Register.jsp">Register</a>
        <a href="login.jsp">Login</a>
        <a href="adminreg.jsp">Admin Register</a>
        <a href="adminlogin.jsp">Admin Login</a>
    </div>

</div>

</body>
</html>
