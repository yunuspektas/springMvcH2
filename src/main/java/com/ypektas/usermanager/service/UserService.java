package com.ypektas.usermanager.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ypektas.usermanager.dao.UserDAO;
import com.ypektas.usermanager.model.User;

@Service
public class UserService {
	
	@Autowired
    private UserDAO userDAO;
	
	
	public List<User> getAllUsers() {
		return userDAO.getAllUsers();
	}
	
	public void save(User aUser) {
		userDAO.save(aUser);
	}
	


}
