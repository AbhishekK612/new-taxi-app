<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Taxi Booking | Login</title>

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

height:100vh;

display:flex;

justify-content:center;

align-items:center;

background:linear-gradient(135deg,#2563eb,#0f172a);

overflow:hidden;

}

body::before{

content:"";

position:absolute;

width:650px;
height:650px;

background:rgba(255,255,255,.08);

border-radius:50%;

top:-180px;

left:-180px;

}

body::after{

content:"";

position:absolute;

width:500px;
height:500px;

background:rgba(255,255,255,.06);

border-radius:50%;

bottom:-160px;

right:-150px;

}

.login-box{

position:relative;

width:420px;

background:rgba(255,255,255,.15);

backdrop-filter:blur(18px);

border-radius:25px;

padding:40px;

box-shadow:0 15px 40px rgba(0,0,0,.35);

color:white;

z-index:2;

}

.logo{

font-size:60px;

text-align:center;

color:#FFD43B;

margin-bottom:10px;

}

h2{

text-align:center;

font-weight:700;

margin-bottom:5px;

}

.subtitle{

text-align:center;

font-size:14px;

opacity:.8;

margin-bottom:30px;

}

.form-control{

height:55px;

border-radius:12px;

background:rgba(255,255,255,.2);

border:none;

color:#fff;

}

.form-control::placeholder{

color:#eee;

}

.form-control:focus{

background:rgba(255,255,255,.25);

color:white;

box-shadow:none;

}

.input-group-text{

background:rgba(255,255,255,.2);

border:none;

color:white;

}

.btn-login{

height:55px;

border-radius:12px;

font-size:18px;

font-weight:600;

background:#FFD43B;

color:#000;

border:none;

transition:.3s;

}

.btn-login:hover{

transform:translateY(-3px);

background:#ffc107;

}

.footer{

text-align:center;

margin-top:25px;

font-size:14px;

}

.footer a{

color:#FFD43B;

text-decoration:none;

font-weight:600;

}

.error{

background:#dc3545;

padding:10px;

border-radius:8px;

margin-bottom:20px;

text-align:center;

}

</style>

</head>

<body>

<div class="login-box">

<div class="logo">

<i class="fa-solid fa-taxi"></i>

</div>

<h2>Taxi Booking</h2>

<p class="subtitle">
Welcome Back! Please login to continue.
</p>

<%
String error=request.getParameter("error");

if(error!=null){
%>

<div class="error">

Invalid Username or Password

</div>

<%
}
%>

<form action="${pageContext.request.contextPath}/login" method="post">

<div class="mb-3">

<div class="input-group">

<span class="input-group-text">

<i class="fa-solid fa-user"></i>

</span>

<input

type="text"

name="username"

class="form-control"

placeholder="Enter Username"

required>

</div>

</div>

<div class="mb-4">

<div class="input-group">

<span class="input-group-text">

<i class="fa-solid fa-lock"></i>

</span>

<input

type="password"

name="password"

class="form-control"

placeholder="Enter Password"

required>

</div>

</div>

<div class="d-grid">

<button class="btn btn-login">

<i class="fa-solid fa-right-to-bracket"></i>

Login

</button>

</div>

</form>

<div class="footer">

Don't have an account?

<a href="register.jsp">

Register

</a>

</div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>