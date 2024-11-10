package com.lms.service;
import com.lms.dao.UserDAO;
import com.lms.model.User;
import java.util.List;
public class UserService {
	private UserDAO userDAO = new UserDAO();

    public void registerUser (User user) {
        userDAO.addUser (user);
    }

    public List<User> listUsers() {
        return userDAO.getAllUsers();
    }
}
