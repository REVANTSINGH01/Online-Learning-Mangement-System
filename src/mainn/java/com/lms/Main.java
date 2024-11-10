package com.lms;
import com.lms.model.User;
import com.lms.model.Course;
import com.lms.service.UserService;
import com.lms.service.CourseService;

import java.util.List;
import java.util.Scanner;
public class Main {
	public static void main(String[] args) {
        UserService userService = new UserService();
        CourseService courseService = new CourseService();
        Scanner scanner = new Scanner(System.in);

        while (true) {
            System.out.println("Welcome to the Learning Management System");
            System.out.println("1. Add User");
            System.out.println("2. List Users");
            System.out.println("3. Add Course");
            System.out.println("4. List Courses");
            System.out.println("5. Exit");
            System.out.print("Choose an option: ");
            int choice = scanner.nextInt();
            scanner.nextLine(); // Consume newline

            switch (choice) {
                case 1:
                    // Add User
                    System.out.print("Enter username: ");
                    String username = scanner.nextLine();
                    System.out.print("Enter password: ");
                    String password = scanner.nextLine();
                    System.out.print("Enter role (student/teacher): ");
                    String role = scanner.nextLine();

                    User user = new User();
                    user.setUsername(username);
                    user.setPassword(password);
                    user.setRole(role);
                    userService.registerUser (user);
                    System.out.println("User  added successfully!");
                    break;

                case 2:
                    // List Users
                    List<User> users = userService.listUsers();
                    System.out.println("List of Users:");
                    for (User  u : users) {
                        System.out.println("Username: " + u.getUsername() + ", Role: " + u.getRole());
                    }
                    break;

                case 3:
                    // Add Course
                    System.out.print("Enter course title: ");
                    String title = scanner.nextLine();
                    System.out.print("Enter course description: ");
                    String description = scanner.nextLine();
                    System.out.print("Enter teacher ID: ");
                    int teacherId = scanner.nextInt();
                    scanner.nextLine(); // Consume newline

                    Course course = new Course();
                    course.setTitle(title);
                    course.setDescription(description);
                    course.setTeacherId(teacherId);
                    courseService.addCourse(course);
                    System.out.println("Course added successfully!");
                    break;

                case 4:
                    // List Courses
                    List<Course> courses = courseService.listCourses();
                    System.out.println("List of Courses:");
                    for (Course c : courses) {
                        System.out.println("Title: " + c.getTitle() + ", Description: " + c.getDescription());
                    }
                    break;

                case 5:
                    // Exit
                    System.out.println("Exiting...");
                    scanner.close();
                    return;

                default:
                    System.out.println("Invalid option. Please try again.");
                    break;
            }
        }
    }
}
