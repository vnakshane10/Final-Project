package com.ecomm.test;

import static org.junit.Assert.*;

import java.util.List;

import org.hibernate.Session;
import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.CategoryDAO;
import com.ecomm.model.Category;

public class CategoryDAOTest 
{
	static CategoryDAO categoryDAO;
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext myContext=new AnnotationConfigApplicationContext();
		myContext.scan("com.ecomm");
		myContext.refresh();
		
		categoryDAO=(CategoryDAO)myContext.getBean("categoryDAO");
	}
	@Ignore
	@Test
	public void addCategoryTest()
	{
		
		Category category=new Category();
		category.setCategoryId(102);
		category.setCategoryName("Mobile-Xiomi");
		category.setCategoryDesc("Xiomi Mobile Description");
			
		assertTrue("Problem in inserting Category",categoryDAO.addCategory(category));
		
		
	}
	@Ignore
	@Test
	public void updateCategoryTest()
	
	{
	    Category category=(Category)categoryDAO.getCategory(101);
	    category.setCategoryDesc("All Samsung Mobile with 4G and AI Camera");
	    
	    System.out.println("Category Id:"+category.getCategoryId());
	    System.out.println("Category Name:"+category.getCategoryName());
	    assertTrue("Problem in updating Category",categoryDAO.updateCategory(category));
	}
	@Ignore
	@Test
	public void retriveCategoriesTest()
	{
		List<Category> categoryList=(List<Category>)categoryDAO.retrieveCategories();
		assertTrue("Problem in Retrieving the Category List",categoryList.size()>0);
		for(Category category:categoryList)
		{
			System.out.println(category);
		}
	}
	@Test
	public void deleteCategoryTest()
	
	{
	    Category category=(Category)categoryDAO.getCategory(103);
	    System.out.println("Category Id:"+category.getCategoryId());
	    assertTrue("Problem in deleting Category",categoryDAO.deleteCategory(category));
	}
	
}
