<%@page import="java.util.List"%>
<%@page import="com.servlet.Dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Details</title>

<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');

/* ========== RESET ========== */
*{
  margin:0;
  padding:0;
  box-sizing:border-box;
  font-family:'Poppins',sans-serif;
}

body{
  background:#ffffff;
}

/* ========== PAGE WRAPPER ========== */
.page{
  position:relative;
  min-height:100vh;
  padding:60px 40px;
  overflow:hidden;
}

/* BACKGROUND IMAGE */
.page::before{
  content:"";
  position:absolute;
  inset:0;
  background:url("image/carbg.jpg") center/cover no-repeat;
  opacity:0.25;
  z-index:-2;
}

/* GRADIENT OVERLAY */
.page::after{
  content:"";
  position:absolute;
  inset:0;
  background:linear-gradient(
    rgba(224,242,254,0.65),
    rgba(252,231,243,0.65)
  );
  z-index:-1;
}

/* ========== CARD ========== */
.table-card{
  max-width:1200px;
  margin:auto;
  background:rgba(255,255,255,0.9);
  backdrop-filter:blur(10px);
  padding:30px;
  border-radius:22px;

  box-shadow:0 25px 50px rgba(0,0,0,0.2);
}

/* HEADER */
.table-header{
  display:flex;
  justify-content:space-between;
  align-items:center;
  margin-bottom:25px;
}

.table-header h1{
  font-size:28px;
  background:linear-gradient(90deg,#38bdf8,#f472b6);
  -webkit-background-clip:text;
  -webkit-text-fill-color:transparent;
}

/* BACK BUTTON */
.back-btn{
  text-decoration:none;
  padding:10px 22px;
  border-radius:22px;
  font-size:14px;
  font-weight:500;

  background:linear-gradient(135deg,#bae6fd,#fbcfe8);
  color:#1f2937;

  box-shadow:0 10px 22px rgba(0,0,0,0.15);
  transition:0.3s ease;
}

.back-btn:hover{
  background:linear-gradient(135deg,#38bdf8,#f472b6);
  color:white;
  transform:translateY(-2px);
}

/* ========== TABLE ========== */
table{
  width:100%;
  border-collapse:collapse;
  font-size:14px;
}

th, td{
  padding:14px 12px;
  text-align:center;
}

th{
  background:linear-gradient(135deg,#e0f2fe,#fce7f3);
  color:#0f172a;
  font-weight:600;
}

td{
  color:#334155;
  background:rgba(255,255,255,0.7);
}

/* ROW HOVER */
tr:hover td{
  background:rgba(224,242,254,0.6);
}

/* ========== ACTION BUTTONS ========== */
.action a{
  text-decoration:none;
  padding:6px 14px;
  border-radius:14px;
  font-size:13px;
  font-weight:500;
  margin:0 4px;
  display:inline-block;
  transition:0.3s ease;
}

/* EDIT */
.action .edit{
  background:linear-gradient(135deg,#38bdf8,#60a5fa);
  color:white;
}

/* DELETE */
.action .delete{
  background:linear-gradient(135deg,#f87171,#ef4444);
  color:white;
}

.action a:hover{
  transform:translateY(-2px);
  box-shadow:0 8px 18px rgba(0,0,0,0.2);
}

/* ========== RESPONSIVE ========== */
@media(max-width:768px){
  .page{
    padding:40px 15px;
  }

  table{
    font-size:12px;
  }
}
</style>
</head>

<body>

<%
List<User> userlist = (List<User>)request.getAttribute("userlist1");
%>

<div class="page">

  <div class="table-card">

    <div class="table-header">
      <h1>User Details</h1>
      <a href="admindash.jsp" class="back-btn">Back to Dashboard</a>
    </div>

    <table>

      <tr>
        <th>User ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Phone Number</th>
        <th>Date & Time</th>
        <th>Action</th>
      </tr>

      <%
      for(User ulist : userlist){
      %>
      <tr>
        <td><%=ulist.getU_id()%></td>
        <td><%=ulist.getFullname()%></td>
        <td><%=ulist.getEmail()%></td>
        <td><%=ulist.getPhone()%></td>
        <td><%=ulist.getCurrDateTime()%></td>
        <td class="action">
          <a href="edit?e=<%=ulist.getU_id()%>" class="edit">Edit</a>
          <a href="delete?d=<%=ulist.getU_id()%>" class="delete">Delete</a>
        </td>
      </tr>
      <%
      }
      %>

    </table>

  </div>

</div>

</body>
</html>
