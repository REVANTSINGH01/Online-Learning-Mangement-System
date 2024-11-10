#ONLINE LEARNING MANAGEMENT SYSTEM
##Project Overview
A Java-based Student Management System for managing student and teacher information using MySQL database.

##Project Structure

Ims-webapp
├── src
│   ├── main
│   │   ├── resources
│   │   │   └── META-INF
│   │   │       └── resources
│   │   │           └── application.properties
│   │   ├── java
│   │   │   └── com
│   │   │       └── lms
│   │   │           ├── Main.java
│   │   │           ├── dao
│   │   │           │   ├── CourseDAO.java
│   │   │           │   ├── DBConnection.java
│   │   │           │   └── UserDAO.java
│   │   │           ├── model
│   │   │           │   ├── Course.java
│   │   │           │   └── User.java
│   │   │           └── service
│   │   │               ├── CourseService.java
│   │   │               └── UserService.java
│   │   └── test
│   │       └── java
│   │           └── com
│   │               └── lms
│   │                   └── MainTest.java
│   └── test
│       └── resources
│           └── META-INF
│               └── resources
│                   └── application.properties
├── pom.xml
└── schema.sql
|
README.md

##Prerequisites
Java Development Kit (JDK) 8 or higher
MySQL Database
Maven for dependency management
Eclipse IDE
Running the Application in Eclipse IDE
Step 1: Clone the Repository

Open a terminal or command prompt.
Clone the repository.
Navigate to the project directory.
Step 2: Import the Project into Eclipse

Open Eclipse IDE.
Go to File > Import....
Select Existing Maven Projects under Maven and click Next.
Browse to the directory where you cloned the project and select it.
Click Finish to import the project.
Step 3: Create a Database using MySQL Workbench

Install MySQL Server
Create database using sql commands given in schema in src/schema.sql.
Step 4: Configure Database Connection

Open the file DBConnection.java located at 'src/main/java/com/sms/dao/DBConnection.java'
Ensure that the database connection details (URL, USER, PASSWORD) are correctly set Update connection details:
URL: jdbc:mysql://localhost:3306/student_management
USER: root // or your MySQL username
PASSWORD: root // or your MySQL password
Step 5: Add Dependencies

Ensure that the required dependencies (like MySQL Connector/J) are specified in the pom.xml file.
Right-click on the project in Eclipse, and select Maven > Update Project... to download the dependencies.
Dependencies: - MYSQL - MySQL Connector/J - MYSQL Workbench

Step 6: Run the Application

Open the Main.java file located at /lms-webapp/src/mainn/java/com/lms/Main.java.
Right-click on Main.java and select Run As > Java Application.
The application will run, and you should see output in the console displaying the added students and teachers.
By following these steps, you should be able to run the Student Management System project in Eclipse IDE successfully.

##Features
Add new students
Add new teachers
Retrieve all students
Retrieve all teachers
##Database Schema
USER Table
id (Primary Key)
name
password
role

COURSE Table
ID(Primary key)
Title 
Description
Teacher Id (Foreign key From 'users' Table)

ENROLLMENT TABLE
Id
UserId
CourseId


Troubleshooting
Ensure MySQL server is running
Verify database connection parameters
Check that all dependencies are installed
