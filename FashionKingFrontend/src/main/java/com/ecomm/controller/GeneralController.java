package com.ecomm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GeneralController {

	@RequestMapping("/login")
	public String showLoginPage(Model m)
	{
		System.out.println("==I am in My Controller--Login Page==");
		m.addAttribute("pagename", "Sign In");
		return "Login";
	}
	@RequestMapping("/register")
	public String showRegisterPage(Model m)
	{
		System.out.println("==I am in My Controller--Register Page==");
		m.addAttribute("pagename", "Sign Up");
		return "Register";
	}
	@RequestMapping("/userpage")
	public String showUserPage(Model m)
	{
		System.out.println("==I am in My Controller--User Page==");
		m.addAttribute("pagename", "Home");
		return "UserHome";
	}
	@RequestMapping("/adminpage")
	public String showAdminPage(Model m)
	{
		System.out.println("==I am in My Controller--Admin Page==");
		m.addAttribute("pagename", "Home");
		return "AdminHome";
	}
	@RequestMapping("/ProductDisplay")
	public String showProductDisplayPage(Model m)
	{
		System.out.println("==I am in My Controller--ProductDisplay Page==");
		m.addAttribute("pagename", "ProductDisplay");
		return "ProductDisplay";
	}
	@RequestMapping("/ProductDisplay1")
	public String showProductDisplay1Page(Model m)
	{
		System.out.println("==I am in My Controller--ProductDisplay1 Page==");
		m.addAttribute("pagename", "ProductDisplay1");
		return "ProductDisplay1";
	}
	@RequestMapping("/ViewCart")
	public String showViewCartPage(Model m)
	{
		System.out.println("==I am in My Controller--ViewCart Page==");
		m.addAttribute("pagename", "ViewCart");
		return "ViewCart";
	}
}
