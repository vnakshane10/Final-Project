package com.ecomm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.ecomm.dao.UserDAO;
import com.ecomm.model.UserDetail;

@Controller
public class RegisterController
{
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
@Autowired
  UserDAO userDAO;
  
  @RequestMapping("/showUserDetail")
  public String showUserDetail(Model m)
  {
	  boolean userList=userDAO.equals(userDAO);
	   m.addAttribute("userList",userList);
	   return "UserDetail";
  }
  
  @RequestMapping("/InsertUserDetail")
  public String insertUserDetail(@RequestParam("userName")String userName,@RequestParam("password")String password,@RequestParam("enabled")boolean enabled,@RequestParam("customerName")String customerName,@RequestParam("emailId")String emailId,@RequestParam("mobileNo")String mobileNo,@RequestParam("address")String address,@RequestParam("role")String role,Model m)
  {
	  
	   UserDetail user=new UserDetail();
	   user.setUserName(userName);
	   user.setPassword(password);
	   user.setEnabled(enabled);
	   user.setCustomerName(customerName);
	   user.setEmailId(emailId);
	   user.setMobileNo(mobileNo);
	   user.setAddress(address);
	   user.setRole(role);
	   /*boolean userList=userDAO.registerUser(user);
	   m.addAttribute("userList",userList);*/
	   
	   
	String encodedPassword=bCryptPasswordEncoder.encode(user.getPassword());
	   
	   user.setPassword(encodedPassword);
	   
	   if(userDAO.registerUser(user))
	   {
		   return "Login";
	   }
	   else
	   {
		   m.addAttribute("errorinfo","Error in Registration");
	   
	   return "UserDetail"; 
	   }
  }
}
