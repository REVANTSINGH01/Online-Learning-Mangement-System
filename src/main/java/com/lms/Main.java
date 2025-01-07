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
            System.out.println("5. Update Course");
            System.out.println("6. Delete Course");
            System.out.println("7. Exit");
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

                    // Register the user
                    userService.registerUser (username, password, role);
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

                    // Create and add the course
                    
                    courseService.addCourse (title,description); // Corrected to use the instance method
                    System.out.println("Course added successfully!");
                    break;

                case 4:
                    // List Courses
                    List<Course> courses = courseService.listCourses();
                    System.out.println("List of Courses:");
                    for (Course c : courses) {
                        System.out.println("ID: " + c.getId() + ", Title: " + c.getTitle() + ", Description: " + c.getDescription());
                    }
                    break;

                case 5:
                    // Update Course
                    System.out.print("Enter course ID to update: ");
                    int courseIdToUpdate = scanner.nextInt();
                    scanner.nextLine(); // Consume newline
                    System.out.print("Enter new course title: ");
                    String newTitle = scanner.nextLine();
                    System.out.print("Enter new course description: ");
                    String newDescription = scanner.nextLine();

                    // Update the course
                    courseService.updateCourse(courseIdToUpdate, newTitle, newDescription);
                    System.out.println("Course updated successfully!");
                    break;

                case 6:
                    // Delete Course
                    System.out.print("Enter course ID to delete: ");
                    int courseIdToDelete = scanner.nextInt();
                    scanner.nextLine(); // Consume newline

                    // Delete the course
                    courseService.deleteCourse(courseIdToDelete);
                    System.out.println("Course deleted successfully!");
                    break;

                case 7:
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