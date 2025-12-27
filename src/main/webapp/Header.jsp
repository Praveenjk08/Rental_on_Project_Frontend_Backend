<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rental Service</title>

<style>
/* ========== GLOBAL RESET ========== */
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:"Poppins","Segoe UI",sans-serif;
}

/* ========== NAVBAR ========== */
.navbar{
    width:100%;
    height:90px;
    display:flex;
    align-items:center;
    justify-content:space-between;
    padding:0 40px;

    background:linear-gradient(135deg,#e0f2fe,#fce7f3);
    box-shadow:0 10px 30px rgba(0,0,0,0.12);
}

/* ========== LEFT SECTION ========== */
.nav-left{
    display:flex;
    align-items:center;
    gap:18px;
}

/* HAMBURGER */
.hamburger{
    font-size:26px;
    cursor:pointer;
    color:#1f2937;
    user-select:none;
}

/* LOGO */
.logo-box{
    display:flex;
    align-items:center;
    gap:10px;
}

.logo-box img{
    height:55px;
}

.logo-box h1{
    font-size:22px;
    font-weight:700;
    background:linear-gradient(90deg,#38bdf8,#f472b6);
    -webkit-background-clip:text;
    -webkit-text-fill-color:transparent;
}

/* ========== MAIN NAV LINKS ========== */
.navbar-links{
    display:flex;
    gap:18px;
}

.navbar-links a{
    text-decoration:none;
    font-size:15px;
    font-weight:500;
    color:#1f2937;
    padding:10px 22px;
    border-radius:25px;

    background:linear-gradient(135deg,#bae6fd,#fbcfe8);
    box-shadow:0 8px 18px rgba(0,0,0,0.15);
    transition:0.3s ease;
}

.navbar-links a:hover{
    background:linear-gradient(135deg,#38bdf8,#f472b6);
    color:white;
    transform:translateY(-3px);
}

/* ========== ADMIN MENU (HIDDEN) ========== */
.admin-menu{
    position:absolute;
    top:90px;
    left:20px;
    width:220px;
    z-index:9999;

    background:rgba(255,255,255,0.9);
    backdrop-filter:blur(10px);
    border-radius:16px;
    padding:15px;
    box-shadow:0 25px 50px rgba(0,0,0,0.25);

    display:none;
    flex-direction:column;
    gap:12px;
}


.admin-menu a{
    text-decoration:none;
    padding:10px 15px;
    border-radius:12px;
    font-size:14px;
    color:#1f2937;

    background:linear-gradient(135deg,#bae6fd,#fbcfe8);
    transition:0.3s ease;
}

.admin-menu a:hover{
    background:linear-gradient(135deg,#38bdf8,#f472b6);
    color:white;
}

/* ========== RESPONSIVE ========== */
@media(max-width:900px){
    .navbar-links{
        display:none;
    }
}
</style>
</head>

<body>

<div class="navbar">

    <!-- LEFT SIDE -->
    <div class="nav-left">

        <!-- HAMBURGER -->
        <div class="hamburger" onclick="toggleAdminMenu()">☰</div>

        <!-- LOGO -->
        <div class="logo-box">
            <img src="image/rideon-logo.jpg" alt="Logo">
            <h1>Rental Vehicle App</h1>
        </div>
    </div>

    <!-- NORMAL USER LINKS -->
    <div class="navbar-links">
        <a href="index.jsp">Home</a>
        <a href="Register.jsp">Register</a>
        <a href="login.jsp">Login</a>
    </div>
</div>

<!-- ADMIN LINKS (HAMBURGER MENU) -->
<div class="admin-menu" id="adminMenu">
    <a href="<%=request.getContextPath()%>/adminreg.jsp">Admin Register</a>
    <a href="<%=request.getContextPath()%>/adminlogin.jsp">Admin Login</a>
</div>

<script>
function toggleAdminMenu(){
    const menu = document.getElementById("adminMenu");
    menu.style.display = menu.style.display === "flex" ? "none" : "flex";
}

/* CLOSE MENU ON OUTSIDE CLICK */
document.addEventListener("click", function(e){
    const menu = document.getElementById("adminMenu");
    const burger = document.querySelector(".hamburger");

    if(!menu.contains(e.target) && !burger.contains(e.target)){
        menu.style.display = "none";
    }
});
</script>

</body>
</html>
