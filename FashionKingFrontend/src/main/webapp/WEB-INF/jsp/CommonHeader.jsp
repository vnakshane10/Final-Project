<%@ page language="java" contentType="text/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <title>Big Bazar</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<div style="background-color:#FBEEE6;">
<p align="right">
<img src="<c:url value='./images/fb.jpg'/>" style="width:100px;height:40px"/>
</div>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <a class="navbar-brand" href="#">
    <img src="<c:url value='./images/Big.jpg'/>" alt="logo" style="width:50px;height:50px"/>
  </a>
  <ul class="navbar-nav">
  
 <c:if test="${sessionScope.role==null}">
 <li class="nav-item">
      <a class="nav-link" href="<c:url value='index.jsp'/>">Home</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="login">Login</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="showUserDetail">Register</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Contact Us</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">About Us</a>
    </li>
    </c:if>
    <c:if test="${sessionScope.role!=null}">
       <c:if test="${sessionScope.role=='ROLE_ADMIN'}">
       <li class="nav-item">
      <a class="nav-link" href="adminpage">Home</a>
    </li>
       <li class="nav-item">
      <a class="nav-link" href="showCategory">Manage Category</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="showProduct">Manage Product</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="showSupplier">Manage Supplier</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="login">Sign Out</a>
    </li>
    </c:if>
    <c:if test="${sessionScope.role=='ROLE_USER'}">
    <li class="nav-item">
      <a class="nav-link" href="userpage">Home</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="showUserDetail">UserDetail</a>
    </li>
    </c:if>
    </c:if>
  </ul>
  
</nav>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-bottom">
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="login">SignUp</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="javascript:void(0)">Link</a>
    </li>
  </ul>
</nav>
</body>
</html>