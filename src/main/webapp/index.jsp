<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>

<style>
    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background: #f4f6f9;
    }

    .container {
        max-width: 900px;
        margin: 80px auto;
        padding: 20px;
        text-align: center;
    }

    h2 {
        color: #2c3e50;
        margin-bottom: 30px;
        font-size: 32px;
    }

    .btn-group {
        display: flex;
        justify-content: center;
        gap: 20px;
        flex-wrap: wrap;
        margin-top: 25px;
    }

    .btn {
        padding: 12px 24px;
        background: #2980b9;
        color: white;
        text-decoration: none;
        font-size: 16px;
        border-radius: 8px;
        transition: 0.3s;
    }

    .btn:hover {
        background: #1f618d;
    }

    /* Different colors for clarity */
    .register-btn { background: #27ae60; }
    .register-btn:hover { background: #1e8449; }

    .login-btn { background: #8e44ad; }
    .login-btn:hover { background: #6c3483; }

    .admin-btn { background: #d35400; }
    .admin-btn:hover { background: #a04000; }

    .admin-login-btn { background: #c0392b; }
    .admin-login-btn:hover { background: #922b21; }

</style>

</head>
<body>
   
   
   <%@ include file="Header.jsp" %>
    <%-- <%@ include file="NavBar.jsp" --%>

    <div class="container">
        <h2>Welcome to Rental Service!</h2>

        <div class="btn-group">
            <a href="Register.jsp" class="btn register-btn">Register</a>
            <a href="login.jsp" class="btn login-btn">Login</a>
            <a href="adminreg.jsp" class="btn admin-btn">Admin Register</a>
            <a href="adminlogin.jsp" class="btn admin-login-btn">Admin Login</a>
        </div>
    </div>
    
    <%@include file="Footer.jsp" %>

</body>
</html>
