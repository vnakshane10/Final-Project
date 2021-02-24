package com.ecomm.test;

import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.SupplierDAO;
import com.ecomm.model.Product;
import com.ecomm.model.Supplier;


public class SupplierDAOTest {
	
		
		static SupplierDAO supplierDAO;
		
		@BeforeClass
		public static void initialize()
		{
			AnnotationConfigApplicationContext myContext=new AnnotationConfigApplicationContext();
			myContext.scan("com.ecomm");
			myContext.refresh();
			
			supplierDAO=(SupplierDAO)myContext.getBean("supplierDAO");
		
	}
		@Ignore
		@Test
		public void addSupplierTest()
		{
			Supplier supplier=new Supplier();
			supplier.setSupplierId(101);
			supplier.setSupplierName("AB Furniture");
			supplier.setSupplierAddr("Nagpur");
			
			assertTrue("Problem in inserting Supplier",supplierDAO.addSupplier(supplier));
		}
		@Ignore
		@Test
		public void updateSupplierTest()
		{
			Supplier supplier=(Supplier)supplierDAO.getSupplier(102);
			supplier.setSupplierAddr("Mumbai");
			//assertNotNull("Problem in Null Category",category);
			System.out.println("Supplier Id:"+supplier.getSupplierId());
			System.out.println("Supplier Name:"+supplier.getSupplierName());
		    assertTrue("Problem in inserting Supplier",supplierDAO.updateSupplier(supplier));	
			}
		@Test
		public void deleteSupplierTest()
		
		{
			Supplier supplier=(Supplier)supplierDAO.getSupplier(103);
		    
		    System.out.println("Supplier Id:"+supplier.getSupplierId());
		    assertTrue("Problem in deleting Supplier",supplierDAO.deleteSupplier(supplier));
		}
		@Test
		public void retrieveSupplierTest()
		{
			List<Supplier> supplierList=(List<Supplier>)supplierDAO.retrieveCategories();
			assertTrue("Problem in Retrieving the Supplier List", supplierList.size()>0);
			for(Supplier supplier:supplierList)
			{
				System.out.println(supplier);
			}
		}

}
