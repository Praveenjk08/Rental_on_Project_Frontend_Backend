<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Vehicle</title>

<style>
    body {
        margin: 0;
        padding: 0;
        background: linear-gradient(135deg, #2c3e50, #34495e);
        font-family: Arial, sans-serif;
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .search-box {
        background: white;
        padding: 35px;
        width: 420px;
        border-radius: 15px;
        box-shadow: 0 6px 25px rgba(0, 0, 0, 0.25);
        text-align: center;
        animation: fadeIn 0.8s ease-in-out;
    }

    h1 {
        margin-bottom: 25px;
        color: #2c3e50;
        font-size: 28px;
        font-weight: bold;
    }

    .input-field {
        width: 100%;
        padding: 12px 14px;
        font-size: 16px;
        border-radius: 8px;
        border: 1px solid #ccc;
        margin-bottom: 18px;
        outline: none;
        transition: 0.3s;
    }

    .input-field:focus {
        border-color: #2980b9;
        box-shadow: 0 0 8px rgba(52, 152, 219, 0.4);
    }

    .submit-btn {
        width: 100%;
        padding: 12px;
        background: #2980b9;
        color: white;
        font-size: 17px;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        transition: 0.3s;
    }

    .submit-btn:hover {
        background: #1f618d;
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(20px); }
        to { opacity: 1; transform: translateY(0); }
    }
</style>

</head>
<body>

<div class="search-box">
    <h1>Search Vehicle</h1>

    <form action="vpjk" method="post">
        <input type="text" class="input-field" 
               placeholder="Enter vehicle name (Brand)" 
               name="name" required>

        <button type="submit" class="submit-btn">Search</button>
    </form>
</div>

</body>
</html>
