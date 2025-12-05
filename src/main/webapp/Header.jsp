<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>
    .navbar {
        width: 100%;
        background: #2c3e50;
        padding: 15px 25px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        color: white;
        box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        height: 100px;
    }

    .navbar .logo {
        font-size: 24px;
        font-weight: bold;
        letter-spacing: 1px;
    }

    .navbar-links a {
        color: white;
        text-decoration: none;
        margin-left: 25px;
        font-size: 17px;
        transition: 0.3s;
    }

    .navbar-links a:hover {
        color: #f1c40f;
    }
</style>

</head>
<body>

<div class="navbar">
    <div class="logo">Rental Service</div>

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
