<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container">
<div class="row">

<div class="col-xs-12 col-sm-7 col-md-5"><br/><br/><br/>
    <img src="<c:url value='./images/reg.jpg'/>" alt="logo" style="width:400px;height:400px"/>
  </div>
  <div class="col-xs-12 col-sm-8 col-md-7">
  <br/>
<form action ="InsertUserDetail" method="post" align="center">
<table class="table table-bordered table-condensed" align="center">
<tr bgcolor="orange">
<td colspan="2"><center><h2>Registration Form</h2></center></td>
</tr>
<tr bgcolor="#F3E6E4">
<td>User Name</td>
<td><input type="text" name="userName"/></td>
</tr>
<tr bgcolor=#F3E6E4>
<td>Password</td>
<td><input type="password" name="password"/></td>
</tr>
<tr bgcolor="#F3E6E4">
<td>Customer Name</td>
<td><input type="text" name="customerName"/></td>
</tr>
<tr bgcolor="#F3E6E4">
<td>Enabled</td>
<td><input type="text" name="enabled"/></td>
</tr>
<tr bgcolor="#F3E6E4">
<td>Email Id</td>
<td><input type="text" name="emailId"/></td>
</tr>
<tr bgcolor="#F3E6E4">
<td>Address</td>
<td><input type="text" name="address"/></td>
</tr>
<tr bgcolor="#F3E6E4">
<td>Mobile No</td>
<td><input type="text" name="mobileNo"/></td>
</tr>
<tr bgcolor="#F3E6E4">
<td>Role</td>
<td><input type="text" name="role"/></td>
</tr>
<tr bgcolor="orange">
<td colspan="2">
<center>
<button type="SUBMIT" class="btn btn-dark">SUBMIT</button>
</center>
</td>
</tr>
</form>
</div>
</div>
</div>
</table>
<br/><br/><br/><br/><br/>