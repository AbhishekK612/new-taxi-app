<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String username = (String) session.getAttribute("username");

    if (username == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Taxi Booking Dashboard</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"/>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Poppins',sans-serif;
}

body{
background:#f4f7fc;
}

.sidebar{

position:fixed;
left:0;
top:0;
height:100%;
width:260px;
background:#111827;
padding-top:20px;
}

.logo{

font-size:28px;
color:#fff;
font-weight:bold;
text-align:center;
margin-bottom:35px;

}

.logo i{
color:#0d6efd;
}

.sidebar a{

display:block;
padding:15px 25px;
color:#d1d5db;
text-decoration:none;
font-size:16px;
transition:.3s;

}

.sidebar a:hover{

background:#0d6efd;
color:#fff;
padding-left:35px;

}

.main{

margin-left:260px;

}

.topbar{

background:#fff;
height:75px;
box-shadow:0 5px 15px rgba(0,0,0,.08);
display:flex;
justify-content:space-between;
align-items:center;
padding:0 30px;

}

.profile{

font-weight:600;

}

.dashboard{

padding:35px;

}

.card-box{

border:none;
border-radius:18px;
box-shadow:0 15px 35px rgba(0,0,0,.08);
transition:.4s;

}

.card-box:hover{

transform:translateY(-8px);

}

.stat{

font-size:34px;
font-weight:bold;

}

.icon{

font-size:45px;
color:#0d6efd;

}

.table{

background:#fff;

}

</style>

</head>

<body>

<div class="sidebar">

<div class="logo">

<i class="fa-solid fa-taxi"></i>

Taxi Booking

</div>

<a href="#">
<i class="fa-solid fa-house"></i>
Dashboard
</a>

<a href="#">
<i class="fa-solid fa-car"></i>
Book Ride
</a>

<a href="#">
<i class="fa-solid fa-clock-rotate-left"></i>
Ride History
</a>

<a href="#">
<i class="fa-solid fa-users"></i>
Customers
</a>

<a href="#">
<i class="fa-solid fa-id-card"></i>
Drivers
</a>

<a href="#">
<i class="fa-solid fa-wallet"></i>
Payments
</a>

<a href="#">
<i class="fa-solid fa-chart-column"></i>
Reports
</a>

<a href="#">
<i class="fa-solid fa-gear"></i>
Settings
</a>

<a href="logout" class="text-danger">
<i class="fa-solid fa-right-from-bracket"></i>
Logout
</a>

</div>

<div class="main">

<div class="topbar">

<h3>
Dashboard
</h3>

<div class="profile">

<i class="fa-solid fa-user-circle"></i>

Welcome,

<%=username%>

</div>

</div>

<div class="dashboard">

<div class="row g-4">

<div class="col-md-3">

<div class="card card-box p-4">

<div class="d-flex justify-content-between">

<div>

<div>Today's Bookings</div>

<div class="stat">18</div>

</div>

<div class="icon">

<i class="fa-solid fa-calendar-check"></i>

</div>

</div>

</div>

</div>

<div class="col-md-3">

<div class="card card-box p-4">

<div class="d-flex justify-content-between">

<div>

<div>Revenue</div>

<div class="stat">₹84K</div>

</div>

<div class="icon">

<i class="fa-solid fa-indian-rupee-sign"></i>

</div>

</div>

</div>

</div>

<div class="col-md-3">

<div class="card card-box p-4">

<div class="d-flex justify-content-between">

<div>

<div>Drivers</div>

<div class="stat">32</div>

</div>

<div class="icon">

<i class="fa-solid fa-id-card"></i>

</div>

</div>

</div>

</div>

<div class="col-md-3">

<div class="card card-box p-4">

<div class="d-flex justify-content-between">

<div>

<div>Trips</div>

<div class="stat">124</div>

</div>

<div class="icon">

<i class="fa-solid fa-route"></i>

</div>

</div>

</div>

</div>

</div>