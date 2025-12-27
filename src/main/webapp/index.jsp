<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rental Service</title>

<style>
/* ================= GLOBAL ================= */
*{
  margin:0;
  padding:0;
  box-sizing:border-box;
  font-family:"Poppins","Segoe UI",sans-serif;
}

/* ================= BACKGROUND VIDEO ================= */
.bg-video{
  position:fixed;
  top:90px;
  left:0;
  width:100%;
  height:100%
  overflow:hidden;
  z-index:-2;
}

.bg-video video{
  width:100%;
 height:100%
  object-fit:cover;
    filter:none;
}


/* GRADIENT OVERLAY */
.bg-video::after{
  content:"";
  position:absolute;
  inset:0;
  /* GRADIENT OVERLAY  
  background:linear-gradient( 
    rgb(224,242,254,0.15),
    rgb(252,231,243,0.15)
  );
   */
 background:none; 
 
}

/* ================= PAGE CONTENT ================= */
.page-content{
  position:relative;
  z-index:2;
}

/* ================= PAGE TITLE ================= */
.page-title{
  text-align:center;
  padding:140px 20px 50px;
}

.page-title h2{
  font-size:42px;
  font-weight:600;
  background:linear-gradient(90deg,#38bdf8,#f472b6);
  -webkit-background-clip:text;
  -webkit-text-fill-color:transparent;
}

.page-title p{
  margin-top:10px;
  font-size:16px;
  color:#0f172a;
  font-weight:500;
}

/* ================= VEHICLE SECTION ================= */
.vehicle-section{
  display:flex;
  justify-content:center;
  gap:30px;
  padding:40px 20px 120px;
  flex-wrap:wrap;
}

/* ================= VEHICLE CARD ================= */
.vehicle-card{
  position:relative;
  width:280px;
  height:180px;
  border-radius:22px;
  overflow:hidden;
  cursor:pointer;

  /* GRADIENT BORDER */
  border:2px solid transparent;
  background:
    linear-gradient(white,white) padding-box,
    linear-gradient(135deg,#38bdf8,#f472b6) border-box;

  box-shadow:0 15px 30px rgba(0,0,0,0.15);
  transition:all 0.45s ease;
}

/* HOVER EFFECT */
.vehicle-card:hover{
  transform:translateY(-12px) scale(1.05);
  box-shadow:0 40px 80px rgba(56,189,248,0.45);
}

/* ================= CARD TEXT ================= */
.vehicle-text{
  position:absolute;
  inset:0;
  display:flex;
  flex-direction:column;
  justify-content:center;
  align-items:center;
  text-align:center;
  background:rgba(255,255,255,0.75);
  backdrop-filter:blur(6px);
  z-index:2;
  transition:0.3s ease;
}

.vehicle-text h3{
  font-size:22px;
  color:#0369a1;
}

.vehicle-text p{
  font-size:14px;
  color:#334155;
  margin-top:8px;
}

/* ================= CARD VIDEO ================= */
.vehicle-card video{
  width:100%;
  height:100%;
  object-fit:cover;
  opacity:0;
  transition:0.4s ease;
}

/* VIDEO ON HOVER */
.vehicle-card:hover video{
  opacity:1;
}

.vehicle-card:hover .vehicle-text{
  opacity:0;
}

/* ================= RESPONSIVE ================= */
@media(max-width:900px){
  .page-title{
    padding-top:110px;
  }

  .page-title h2{
    font-size:32px;
  }
}
</style>

</head>
<body>

<!-- ================= BACKGROUND VIDEO ================= -->
<div class="bg-video">
  <video autoplay muted loop playsinline>
    <source src="videos/rideon_video.mp4" type="video/mp4">
  </video>
</div>

<!-- ================= HEADER ================= -->
<%@ include file="Header.jsp" %>

<!-- ================= PAGE CONTENT ================= -->
<div class="page-content">

  <!-- TITLE -->
  <div class="page-title">
    <h2>Welcome to Rental Service</h2>
    <p>Ride Easy With Us – Cars, Bikes & Cycles</p>
  </div>

  <!-- VEHICLE CARDS -->
  <div class="vehicle-section">

    <!-- CAR -->
    <div class="vehicle-card">
      <video muted loop>
        <source src="videos/carr.mp4" type="video/mp4">
      </video>
      <div class="vehicle-text">
        <h3>Cars</h3>
        <p>Comfort for every journey</p>
      </div>
    </div>

    <!-- BIKE -->
    <div class="vehicle-card">
      <video muted loop>
        <source src="videos/bikee.mp4" type="video/mp4">
      </video>
      <div class="vehicle-text">
        <h3>Bikes</h3>
        <p>Fast & fuel efficient rides</p>
      </div>
    </div>

    <!-- CYCLE -->
    <div class="vehicle-card">
      <video muted loop>
        <source src="videos/cycle1.mp4" type="video/mp4">
      </video>
      <div class="vehicle-text">
        <h3>Cycles</h3>
        <p>Eco-friendly city rides</p>
      </div>
    </div>

  </div>
</div>

<!-- ================= FOOTER ================= -->
<%@ include file="Footer.jsp" %>

<!-- ================= JS ================= -->
<script>
document.querySelectorAll(".vehicle-card").forEach(card=>{
  const video = card.querySelector("video");

  card.addEventListener("mouseenter",()=>{
    video.play();
  });

  card.addEventListener("mouseleave",()=>{
    video.pause();
    video.currentTime = 0;
  });
});
</script>

</body>
</html>
