package com.ecomm.test;

import static org.junit.Assert.assertTrue;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.UserDAO;
import com.ecomm.model.UserDetail;

public class UserDAOTest {
	
		static UserDAO userDAO;
		
		@BeforeClass
		public static void initialize()
		{
			AnnotationConfigApplicationContext myContext=new AnnotationConfigApplicationContext();
			myContext.scan("com.ecomm");
			myContext.refresh();
			
			userDAO=(UserDAO)myContext.getBean("userDAO");
		
	}
		@Test
		public void registerUserTest()
		{
			UserDetail user=new UserDetail();
			user.setUserName("Tina");
			user.setPassword("1211");
			user.setCustomerName("Trisha");
			user.setEnabled(true);
			user.setEmailId("Tina@gmail.com");
			user.setAddress("Nagpur");
			user.setMobileNo("8788756041");
			user.setRole("ROLE_USER");
			
			assertTrue("Problem in Inserting UserDetail :",userDAO.registerUser(user));
		}

}
