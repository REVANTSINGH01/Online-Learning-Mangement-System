package com.lms.servlet;

import com.lms.dao.UserDAO;
import com.lms.model.User;
import com.lms.service.UserService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/register")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve parameters from the request
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String role = request.getParameter("role"); // Assuming you have a role field in your form

        // Create a new User object
        User user = new User(username, password, role);

        // Create a UserDAO instance and register the user
        UserDAO userDAO = new UserDAO();
        userDAO.registerUser (user); // Ensure this method exists in UserDAO

        // Redirect to a success page or back to the index
        response.sendRedirect("index.jsp");
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        UserService userService = new UserService();
        User user = userService.getUserByUsername(username);
        request.setAttribute("user", user);
        request.getRequestDispatcher("profile.jsp").forward(request, response);
    }
}