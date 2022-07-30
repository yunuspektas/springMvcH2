package com.ypektas.usermanager.web;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ypektas.usermanager.model.User;
import com.ypektas.usermanager.service.UserService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class UserController {
	
	@Autowired
    private UserService userService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		
		model.addAttribute("users", userService.getAllUsers() );
		
		return "home";
		//return "listusers";
	}
	
	@RequestMapping(value = "/get", method = RequestMethod.GET)
	public String listusers(Model model) {
		
		model.addAttribute("users", userService.getAllUsers() );
		
		//return "home";
		return "listusers";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String addUser() {
		
		//TODO : aşağıdaki save metodunu düzelt
		// userService.save(new User("username_" + new Random().nextInt(1000)));
		
		return "register";
	}
	
	/*
	 * @RequestMapping(value = "/delete/{userId}", method = RequestMethod.GET)
	 * public String removeUser(@PathVariable("userId") int userId) {
	 * 
	 * userService.delete(userId);
	 * 
	 * return "redirect:/"; }
	 */
	
}
