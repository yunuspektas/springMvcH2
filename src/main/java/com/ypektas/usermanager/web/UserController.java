package com.ypektas.usermanager.web;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.ypektas.usermanager.dao.UserDAO;
import com.ypektas.usermanager.model.User;
import com.ypektas.usermanager.service.UserService;


@Controller
public class UserController {
	
	@Autowired
    private UserService userService;
	@Autowired
	UserDAO repo;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		
		model.addAttribute("users", userService.getAllUsers() );
		
		return "home";
		
	}
	
	@RequestMapping(value = "/get", method = RequestMethod.GET)
	public String listusers(Model model) {
		
		model.addAttribute("users", userService.getAllUsers() );
		
		return "listusers";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String register() {
	
		return "register";
	}
	

	
	@RequestMapping("addStudent")
	public String saveStudent(User stu) {
		repo.save(stu);
		return "home";
	}
	
	
	
}
