<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>
/* ========== FOOTER WRAPPER ========== */


.footer{
    width:100%;
    padding:50px 30px;
    background:linear-gradient(135deg,#e0f2fe,#fce7f3);

  display:flex;
    flex-direction:row;
   
    justify-content:space-between;
    align-items:flex-start;
    flex-wrap:wrap;
    gap:30px;

    font-family:"Poppins","Segoe UI",sans-serif;
    color:#1f2937;
    box-shadow:0 -12px 35px rgba(0,0,0,0.15);
}

/* ========== FOOTER SECTIONS ========== */
.footer-section{
    max-width:260px;
    background:rgba(255,255,255,0.75);
    backdrop-filter:blur(10px);
    padding:22px;
    border-radius:20px;

    box-shadow:0 15px 30px rgba(0,0,0,0.15);
    transition:0.35s ease;

    display:flex;
    flex-direction:column;
    gap:6px;
}

/* ORDER */
.footer-section:nth-child(1){ order:1; }
.footer-section:nth-child(2){ order:2; }
.footer-section:nth-child(3){ order:3; }
.footer-section:nth-child(4){ order:4; }

.footer-section:hover{
    transform:translateY(-8px);
    box-shadow:0 25px 55px rgba(0,0,0,0.22);
}

/* HEADINGS */
.footer-section h3{
    margin-bottom:10px;
    font-size:20px;
    font-weight:600;

    background:linear-gradient(90deg,#38bdf8,#f472b6);
    -webkit-background-clip:text;
    -webkit-text-fill-color:transparent;
}

/* TEXT */
.footer-section p,
.footer-section a{
    margin:4px 0;
    font-size:14px;
    color:#334155;
    text-decoration:none;
    line-height:1.6;
}

/* LINKS */
.footer-section a:hover{
    color:#0f172a;
    text-decoration:underline;
}

/* ========== SOCIAL ICONS ========== */
.social-icons{
    display:flex;
    gap:14px;
    margin-top:10px;
}

.social-icons a{
    width:44px;
    height:44px;
    display:flex;
    align-items:center;
    justify-content:center;

    border-radius:50%;
    font-size:18px;
    color:#1f2937;

    background:linear-gradient(135deg,#bae6fd,#fbcfe8);
    box-shadow:0 8px 18px rgba(0,0,0,0.18);
    transition:0.35s ease;
}

.social-icons a:hover{
    background:linear-gradient(135deg,#38bdf8,#f472b6);
    color:#ffffff;
    transform:translateY(-4px);
}

/* ========== COPYRIGHT ========== */
.footer-copy{
    width:100%;
    order:99;                  /* ⭐ KEY LINE */
    margin-top:30px;
    padding-top:18px;

    text-align:center;
    font-size:15px;
    color:#475569;

    border-top:1px solid rgba(0,0,0,0.15);
}


.footer-copy span{
    font-weight:bold;
    background:linear-gradient(90deg,#38bdf8,#f472b6);
    -webkit-background-clip:text;
    -webkit-text-fill-color:transparent;
}

/* ========== RESPONSIVE ========== */
@media(max-width:900px){
    .footer{
        justify-content:center;
        text-align:center;
    }

    .footer-section{
        max-width:95%;
    }

    .social-icons{
        justify-content:center;
    }
}
</style>

<!-- ICON CDN -->
<link rel="stylesheet"
 href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

</head>

<body>

<div class="footer">

    <!-- ABOUT -->
    <div class="footer-section">
        <h3>🚗 Rental Service</h3>
        <p>Reliable, safe, and convenient vehicle renting experience.</p>
        <p>Cars • Bikes • Cycles for every journey.</p>
    </div>

    <!-- CONTACT -->
    <div class="footer-section">
        <h3>📞 Contact Us</h3>

        <p>
            📧 Email:
            <a href="mailto:support@rentalservice.com">
                support@rentalservice.com
            </a>
        </p>

        <p>
            📱 Phone:
            <a href="tel:+919876543210">
                +91 98765 43210
            </a>
        </p>
        <p style="font-size:12px;color:#64748b;">
            (Tap to call • Long press to copy)
        </p>
    </div>

    <!-- ADDRESS -->
    <div class="footer-section">
        <h3>📍 Address</h3>
        <p>BTM Layout</p>
        <p>Bengaluru, Karnataka</p>
        <p>India – 560076</p>
    </div>

    <!-- SOCIAL -->
    <div class="footer-section">
        <h3>🌐 Follow Us</h3>
        <div class="social-icons">
            <a href="https://www.instagram.com" target="_blank" title="Instagram">
                <i class="fab fa-instagram"></i>
            </a>
            <a href="https://www.facebook.com" target="_blank" title="Facebook">
                <i class="fab fa-facebook-f"></i>
            </a>
            <a href="https://www.twitter.com" target="_blank" title="Twitter">
                <i class="fab fa-twitter"></i>
            </a>
        </div>
    </div>

    <!-- COPYRIGHT -->
    <div class="footer-copy">
        © 2025 | Designed & Developed by <span>JK Khandgonda</span> 💙
    </div>

</div>

</body>
</html>
