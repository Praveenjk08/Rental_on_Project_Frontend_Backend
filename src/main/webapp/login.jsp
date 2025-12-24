<%@page import="com.servlet.Dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Login</title>

<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');

/* =====================
   RESET
===================== */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}

/* =====================
   PAGE BACKGROUND
===================== */
body {
    min-height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;

    background:
        linear-gradient(
            rgba(17, 24, 39, 0.75),
            rgba(17, 24, 39, 0.85)
        ),
        url("https://images.unsplash.com/photo-1605559424843-9e4c228bf1c2");

    background-size: cover;
    background-position: center;
}

/* =====================
   FORM CARD
===================== */
form {
    width: 390px;
    background: rgba(255, 255, 255, 0.96);
    padding: 40px 35px 35px;
    border-radius: 16px;
    box-shadow: 0 25px 50px rgba(0,0,0,0.4);
    display: flex;
    flex-direction: column;
    gap: 16px;
    animation: fadeUp 0.8s ease;
}

/* =====================
   FORM HEADER (SAME AS REGISTER)
===================== */
.form-header {
    text-align: center;
    margin-bottom: 15px;
}

.form-header h1 {
    font-size: 26px;
    color: #facc15;
    margin-bottom: 6px;
}

.form-header p {
    font-size: 14px;
    color: #6b7280;
}

/* =====================
   INPUTS
===================== */
input {
    padding: 13px 16px;
    font-size: 14px;
    border-radius: 10px;
    border: 1px solid #d1d5db;
    outline: none;
    transition: 0.3s ease;
}

input:focus {
    border-color: #f59e0b;
    box-shadow: 0 0 8px rgba(245,158,11,0.5);
}

/* =====================
   BUTTON
===================== */
button {
    margin-top: 12px;
    padding: 13px;
    font-size: 16px;
    font-weight: 600;
    color: #111827;

    background: linear-gradient(135deg, #facc15, #f59e0b);
    border: none;
    border-radius: 10px;
    cursor: pointer;
    transition: all 0.3s ease;
}

button:hover {
    transform: translateY(-3px);
    box-shadow: 0 12px 25px rgba(245,158,11,0.5);
}

button:active {
    transform: scale(0.97);
}

/* =====================
   ANIMATION
===================== */
@keyframes fadeUp {
    from {
        opacity: 0;
        transform: translateY(25px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

/* =====================
   RESPONSIVE
===================== */
@media (max-width: 450px) {
    form {
        width: 90%;
        padding: 35px 25px;
    }

    .form-header h1 {
        font-size: 24px;
    }
}
</style>

</head>
<body>

<!-- LOGIN FORM -->
<form action="log" method="post">

    <div class="form-header">
        <h1>User Login</h1>
        <p>Cars • Bikes • Cycles Rental Platform</p>
    </div>

    <input type="email" placeholder="Enter your email" name="email" required>
    <input type="password" placeholder="Enter your password" name="pass" required>

    <button type="submit">Login</button>

</form>

</body>
</html>
