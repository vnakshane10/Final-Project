<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp"%>
<style>
body {
background-color: #F5F78A;
}
</style>
<body>

<div class="container">
<div style="background-color:#FDEBD0;font-family:Monotype Corsiva">
Welcome : ${sessionScope.username},<br/>
I am in User Module
</div>
<br/><br/><br/>
<div class="row">

		      <div class="col-md-3">
      <div class="thumbnail">
        <a href="ProductDisplay1" target="_blank">
          <img src="./images/image1.jpeg" alt="Nature" style="width:100%">
          <div class="caption">
            <p>Samsung</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-3">
      <div class="thumbnail">
        <a href="" target="_blank">
          <img src="./images/image2.jpg" alt="Nature" style="width:80%">
          <div class="caption">
            <p>Apple</p>
          </div>
        </a>
      </div>
    </div>
    
    <div class="col-md-3">
      <div class="thumbnail">
        <a href="ProductDisplay" target="_blank">
          <img src="./images/image5.jpeg" alt="Nature" style="width:80%">
          <div class="caption">
            <p>Fastrack</p>
          </div>
        </a>
      </div>
    </div>
    
    <div class="col-md-3">
      <div class="thumbnail">
        <a href="" target="_blank">
          <img src="./images/image13.jpeg" alt="Nature" style="width:100%">
          <div class="caption">
            <p>Laptop</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-3">
      <div class="thumbnail">
        <a href="" target="_blank">
          <img src="./images/image14.jpg" alt="Nature" style="width:80%">
          <div class="caption">
            <p>Pendrive</p>
          </div>
        </a>
      </div>
    </div>
	</div>
</div>
<br/><br/><br/><br/>
</body>
</html>