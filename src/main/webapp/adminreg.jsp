<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Registration</title>

<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');

/* ========== RESET ========== */
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Poppins',sans-serif;
}

/* ========== BODY BACKGROUND ========== */
body{
    min-height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    position:relative;
    overflow:hidden;

    background:
      linear-gradient(
        rgba(224,242,254,0.5),
        rgba(252,231,243,0.5)
      ),
      url("image/rideon-logo.jpg");

    background-size:cover;
    background-position:center;
}

/* ========== BACKGROUND TEXT ========== */
.bg-text{
    position:absolute;
    top:50%;
    left:50%;
    transform:translate(-50%,-50%);
    text-align:center;
    z-index:1;
    pointer-events:none;
}

.bg-text h1{
    font-size:90px;
    font-weight:700;
    letter-spacing:6px;
    color:rgba(15,23,42,0.08);
    white-space:nowrap;
}

.bg-text p{
    margin-top:10px;
    font-size:26px;
    letter-spacing:4px;
    color:rgba(15,23,42,0.12);
}

/* ========== FORM CARD ========== */
form{
    width:390px;
    background:rgba(255,255,255,0.85);
    backdrop-filter:blur(10px);
    padding:40px 35px 35px;
    border-radius:22px;

    box-shadow:0 25px 45px rgba(0,0,0,0.15);

    display:flex;
    flex-direction:column;
    gap:16px;
    z-index:2;

    animation:fadeUp 0.8s ease;
    transition:transform 0.4s ease, box-shadow 0.4s ease;
}

/* HOVER EFFECT */
@media (hover:hover){
    form:hover{
        transform:translateY(-8px) scale(1.02);
        box-shadow:0 40px 80px rgba(0,0,0,0.25);
    }
}

/* ========== FORM HEADER ========== */
.form-header{
    text-align:center;
    margin-bottom:18px;
}

.form-header h1{
    font-size:26px;
    font-weight:600;

    background:linear-gradient(90deg,#38bdf8,#f472b6);
    -webkit-background-clip:text;
    -webkit-text-fill-color:transparent;
}

.form-header p{
    font-size:14px;
    color:#475569;
}

/* ========== INPUTS ========== */
input{
    padding:13px 16px;
    font-size:14px;
    border-radius:14px;
    border:1px solid #cbd5f5;
    outline:none;
    transition:0.3s ease;
}

input:focus{
    border-color:#38bdf8;
    box-shadow:0 0 0 2px rgba(56,189,248,0.25);
}

input[readonly]{
    background:#f1f5f9;
    cursor:not-allowed;
}

/* ========== BUTTON ========== */
button{
    margin-top:12px;
    padding:13px;
    font-size:16px;
    font-weight:600;
    border:none;
    border-radius:22px;
    cursor:pointer;
    color:#ffffff;

    background:linear-gradient(
        135deg,
        #38bdf8,
        #f472b6
    );

    box-shadow:0 12px 25px rgba(0,0,0,0.2);
    transition:0.3s ease;
}

button:hover{
    transform:translateY(-3px);
    box-shadow:0 18px 35px rgba(0,0,0,0.25);
}

button:active{
    transform:scale(0.97);
}

/* ========== ANIMATION ========== */
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

/* ========== RESPONSIVE ========== */
@media(max-width:500px){
    .bg-text h1{
        font-size:48px;
    }

    .bg-text p{
        font-size:18px;
    }

    form{
        width:90%;
        padding:35px 25px;
    }
}
</style>

</head>
<body>

<!-- BACKGROUND TEXT -->
<div class="bg-text">
    <h1>ADMIN PANEL</h1>
    <p>SECURE • MANAGE • CONTROL</p>
</div>

<!-- ADMIN REGISTRATION FORM -->
<form action="adminreg" method="post">

    <div class="form-header">
        <h1>Admin Registration</h1>
        <p>Authorized Administrators Only</p>
    </div>

    <input type="text" placeholder="Enter your name" name="aname" required>
    <input type="email" placeholder="Enter your email" name="aemail" required>
    <input type="password" placeholder="Enter your password" name="apass" required>
    <input type="tel" placeholder="Enter your Phone Number" name="aph" required>
    <input type="date" value="<%=java.time.LocalDate.now()%>" readonly name="adate">

    <button type="submit">Admin Registration</button>

</form>

</body>
</html>
