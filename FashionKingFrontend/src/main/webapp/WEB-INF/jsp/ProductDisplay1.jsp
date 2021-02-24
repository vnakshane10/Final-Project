<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html" %>
<html>
<body>
<c:forEach items="${sessionScope.productList}" var="product">
<div class="group">
 
 <div class="col-xs-12 col-sm-5 col-md-7">
     <img src="images/image1.jpeg" alt="Nature" style="width:30%"/>
	 <div class="content">
	 <h1>Samsung</h1>
	 </div>
	 </div>
	 </div>
	 <div class="col-xs-12 col-sm-5 col-md-3">
	 <%
    try
    {
    	
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection)DriverManager.getConnection(
            "jdbc:mysql://localhost/springdemo","root","Vaishnavi@10");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from product where productId='102'");
    %> <div class="col-xs-12 col-sm-5 col-md-3">
    <table  align="left">
      <thead>
          <tr>
             <th>Product Id</th>
             <th>Product Name</th>
             <th>price</th>
             <th>desc</th>
             <th>stock</th>
             <th>category</th>
             <th>supplier</th>
          </tr>
          <tr>
          <td>${product.productId}</td>
<td>${product.productName}</td>
<td>${product.price}</td>
<td>${product.stock}</td>
<td>${product.category}</td>
<td>${product.supplier}</td>
<td>${product.description}</td>
</tr>
      </thead>
      <tbody>
        <%while(rs.next())
        {
            %>
            <tr>
                <td><%=rs.getString("productId") %>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td><%=rs.getString("productName") %>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td><%=rs.getString("price") %>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td><%=rs.getString("description") %>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td><%=rs.getString("stock") %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td><%=rs.getString("category") %>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td><%=rs.getString("supplier") %>&nbsp;&nbsp;&nbsp;&nbsp;</td>
            </tr>
            <%}%>
           </tbody>
        </table><br>
    <%}
    catch(Exception e){
        out.print(e.getMessage());%><br><%
    }
    
    %>
    <table>
	<br/><br/><br/><br/>
	<label for="quantity">Choose the quantity:</label>
	<select name="quantity"><option value="1" selected>1</option>
	<option value="2">2</option>
	<option value="3">3</option>
	<option value="4">4</option>
	</select>
	</br></br>
	<td><a href="ViewCart" class="btn btn-info">Add to Cart</a></td>
</table>
    
</div>
   </br></br></br></br>   
  
     </a>
  </c:forEach>

 
</body>
</html>
 