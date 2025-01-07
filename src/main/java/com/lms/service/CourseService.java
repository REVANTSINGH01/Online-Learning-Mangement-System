package com.lms.service;

import com.lms.dao.CourseDAO;
import com.lms.model.Course;

import java.util.List;

public class CourseService {
    private CourseDAO courseDAO = new CourseDAO();

    // Method to add a new course
    public void addCourse(String title, String description) {
        Course course = new Course(title, description);
        courseDAO.addCourse(course);
    }

    // Method to list all courses
    public List<Course> listCourses() {
        return courseDAO.getAllCourses();
    }

    // Method to get a course by ID
    public Course getCourseById(int id) {
        return courseDAO.getCourseById(id);
    }

    // Method to update a course
    public void updateCourse(int id, String title, String description) {
        Course course = new Course(title, description);
        course.setId(id); // Set the ID for the course to update
        courseDAO.updateCourse(course);
    }

    // Method to delete a course
    public void deleteCourse(int id) {
        courseDAO.deleteCourse(id);
    }
}