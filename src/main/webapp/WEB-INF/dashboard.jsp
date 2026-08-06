<%
String username =
(String) session.getAttribute("username");

if(username == null){

    response.sendRedirect("login.jsp");

    return;
%>
<html>

<head>

<title>Dashboard</title>

</head>

<body>

<h1>Welcome <%= username %></h1>

<br>

<a href="logout">Logout</a>

</body>

</html>