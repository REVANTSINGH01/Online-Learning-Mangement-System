package com.lms.service;

import com.lms.dao.UserDAO;
import com.lms.model.User;

import java.util.List;

public class UserService {
    private UserDAO userDAO;

    public UserService() {
        this.userDAO = new UserDAO(); // Initialize the UserDAO
    }

    // Method to register a new user
    public void registerUser (String username, String password, String role) {
        User user = new User(username, password, role);
        userDAO.registerUser (user);
    }

    // Method to retrieve a user by username
    public User getUserByUsername(String username) {
        return userDAO.getUserByUsername(username);
    }

    // Method to validate user credentials
    public boolean validateUser (String username, String password) {
        User user = userDAO.getUserByUsername(username);
        if (user != null) {
            return user.getPassword().equals(password); // Simple password check
        }
        return false;
    }

    // Method to retrieve all users
    public List<User> listUsers() {
        return userDAO.getAllUsers(); // Call to the new method in UserDAO
    }
}