<%@page import="com.servlet.Dto.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>

<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');

/* ===== RESET ===== */
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Poppins',sans-serif;
}

/* ===== BACKGROUND (SAME AS DASHBOARD) ===== */
body{
    min-height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    background:
        linear-gradient(
            rgba(224,242,254,0.6),
            rgba(252,231,243,0.6)
        ),
        url("image/carbg.jpg");
    background-size:cover;
    background-position:center;
}

/* ===== ADMIN CARD ===== */
.admin-card{
    width:420px;
    background:rgba(255,255,255,0.88);
    backdrop-filter:blur(12px);
    padding:35px 30px;
    border-radius:22px;
    text-align:center;

    box-shadow:0 30px 60px rgba(0,0,0,0.2);
    animation:fadeUp 0.8s ease;
    transition:transform 0.4s ease, box-shadow 0.4s ease;
}

/* HOVER */
.admin-card:hover{
    transform:translateY(-6px);
    box-shadow:0 45px 90px rgba(0,0,0,0.3);
}

/* ===== TITLE ===== */
.admin-card h1{
    font-size:26px;
    margin-bottom:8px;
    background:linear-gradient(90deg,#38bdf8,#f472b6);
    -webkit-background-clip:text;
    -webkit-text-fill-color:transparent;
}

.admin-card h2{
    font-size:16px;
    font-weight:500;
    color:#334155;
    margin-bottom:25px;
}

/* ===== ACTIONS ===== */
.actions{
    display:flex;
    flex-direction:column;
    gap:14px;
}

.actions a{
    text-decoration:none;
    padding:14px;
    border-radius:22px;
    font-size:15px;
    font-weight:600;
    color:white;

    background:linear-gradient(135deg,#38bdf8,#f472b6);
    box-shadow:0 12px 25px rgba(0,0,0,0.2);
    transition:0.3s ease;
}

.actions a:hover{
    transform:translateY(-3px);
    box-shadow:0 20px 40px rgba(0,0,0,0.3);
}

/* SECONDARY BUTTON */
.actions .secondary{
    background:linear-gradient(135deg,#94a3b8,#64748b);
}

/* ===== FOOT LINKS ===== */
.footer-links{
    margin-top:22px;
}

.footer-links a{
    text-decoration:none;
    font-size:14px;
    font-weight:600;
    color:#1d4ed8;
}

.footer-links a:hover{
    text-decoration:underline;
}

/* ===== ANIMATION ===== */
@keyframes fadeUp{
    from{
        opacity:0;
        transform:translateY(25px);
    }
    to{
        opacity:1;
        transform:translateY(0);
    }
}

/* ===== RESPONSIVE ===== */
@media(max-width:480px){
    .admin-card{
        width:90%;
        padding:30px 22px;
    }
}
</style>

</head>
<body>

<%
Admin admin = (Admin) session.getAttribute("admin");
%>

<div class="admin-card">

    <h1>Admin Dashboard</h1>
    <h2>Welcome, <b><%= admin.getAdmin_Fullname() %></b></h2>

    <div class="actions">
        <a href="viewuser">Manage Employees</a>
        <a href="index.jsp" class="secondary">← Back to Home</a>
    </div>

    

</div>

</body>
</html>
