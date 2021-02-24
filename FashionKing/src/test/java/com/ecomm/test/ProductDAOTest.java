package com.ecomm.test;

import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.ProductDAO;
import com.ecomm.model.Category;
import com.ecomm.model.Product;


public class ProductDAOTest {
	
		
		static ProductDAO productDAO;
		
		@BeforeClass
		public static void initialize()
		{
			AnnotationConfigApplicationContext myContext=new AnnotationConfigApplicationContext();
			myContext.scan("com.ecomm");
			myContext.refresh();
			
			productDAO=(ProductDAO)myContext.getBean("productDAO");
		
	}
		@Ignore
		@Test
		public void addProductTest()
		{
			Product product=new Product();
			product.setProductId(101);
			product.setProductName("LGTV");
			product.setPrice(40000);
			product.setStock(12);
			product.setCategory("Others");
			product.setSupplier("CloudRetail");
			product.setDescription("43inch");
			
			
			
			assertTrue("Problem in inserting Product",productDAO.addProduct(product));
		}
		
		@Test
		public void updateProductTest()
		{
			Product product=(Product)productDAO.getProduct(103);
			product.setDescription("6 GB RAM");
			//assertNotNull("Problem in Null Category",category);
			System.out.println("Product Id:"+product.getProductId());
			System.out.println("Product Name:"+product.getProductName());
		    assertTrue("Problem in inserting Product",productDAO.updateProduct(product));	
			}
		@Ignore
		@Test
		public void deleteProductTest()
		
		{
			Product product=(Product)productDAO.getProduct(103);
		    
		    System.out.println("Product Id:"+product.getProductId());
		    assertTrue("Problem in deleting Product",productDAO.deleteProduct(product));
		}
		@Test
		public void retrieveProductTest()
		{
			List<Product> productList=(List<Product>)productDAO.retrieveCategories();
			assertTrue("Problem in Retrieving the Product List", productList.size()>0);
			for(Product product:productList)
			{
				System.out.println(product);
			}
		}

}
