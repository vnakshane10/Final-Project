<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp"%>
<style>
body {
  background-color: #e6fff5;
}
</style>
<body>
<div class="container">

<div class="row">

<div class="col-xs-12 col-sm-3 col-sm-3">
    <img src="<c:url value='./images/cat.jpg'/>" alt="Nature" style="width:100%"/>
  </div>
  <div class="col-xs-12 col-sm-6 col-sm-6">
<form action ="InsertCategory" method="post" align="center">
<table align="center">
<tr bgcolor="orange">
<td colspan="2"><center>Category Dialog</center></td>
</tr>
<tr bgcolor="pink">
<td>Category Id</td>
<td><input type="text" name="categoryId"/></td>
</tr>
<tr bgcolor="pink">
<td>Category Name</td>
<td><input type="text" name="categoryName"/></td>
</tr>
<tr bgcolor="pink">
<td>Category Description</td>
<td><textarea rows="5" cols="20" name="categoryDesc"></textarea></td>
</tr>
<tr bgcolor="orange">
<td colspan="2">
<center>
<button type="submit" class="btn btn-dark">Submit</button>
</center>
</td>
</tr>
</table>
</form>
</div>

<div class="col-xs-12 col-sm-3 col-sm-3">
    <img src="<c:url value='./images/cat1.jpg'/>" alt="Nature" style="width:100%"/>
  </div>
  </div>
  
  <br/>
  
  <div class="row">
  
  <div class="col-xs-12 col-sm-2 col-sm-2">
    <img src="<c:url value='./images/cat2.jpg'/>" alt="Nature" style="width:100%"/>
  </div>
  
   <div class="col-xs-12 col-sm-8 col-sm-8">
<table class="table table-bordered table-condensed" align="center">
<thead bgcolor="cyan">
<th>Category Id</th>
<th>Category Name</th>
<th>Category Desc</th>
<th colspan='2'>Operation</th>
</thead>
<c:forEach items="${categoryList}" var="category">
<tr>
<td>${category.categoryId}</td>
<td>${category.categoryName}</td>
<td>${category.categoryDesc}</td>
<td><a href="<c:url value='/deleteCategory/${category.categoryId}' />" class="btn btn-danger">Delete</a></td>
<td><a href="<c:url value='/editCategory/${category.categoryId}' />" class="btn btn-info">Edit</a></td>
</tr>
</c:forEach>
</table>
</div>
<div class="col-xs-12 col-sm-2 col-sm-2">
    <img src="<c:url value='./images/cat4.jpg'/>" alt="Nature" style="width:100%" />
  </div>
  </div>
</body>
<br/><br/><br/>
</html>