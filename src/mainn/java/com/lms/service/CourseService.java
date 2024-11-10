package com.lms.service;
import com.lms.dao.CourseDAO;
import com.lms.model.Course;
import java.util.List;
public class CourseService {
	private CourseDAO courseDAO = new CourseDAO();

    public void addCourse(Course course) {
        courseDAO.addCourse(course);
    }

    public List<Course> listCourses() {
        return courseDAO.getAllCourses();
    }
}
