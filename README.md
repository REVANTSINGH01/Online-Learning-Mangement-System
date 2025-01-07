

**ONLINE LEARNING MANAGEMENT SYSTEM**
========================

**Project Overview**
----------------
A Java-based Learning Management System for managing student and teacher information using MySQL database.

**Project Structure**
-----------------
Ims-webapp

├── pom.xml

├── schema.sql

├──README.md 

├── src

│   │

│   ├── main

│   │


│   │   ├── resources

│   │   │

│   │   │   └── META-INF

│   │   │

│   │   │       └── resources

│   │   │

│   │   │           └── application.properties

│   │   ├── java

│   │   │

│   │   │   └── com

│   │   │

│   │   │       └── lms

│   │   │

│   │   │           ├── Main.java

│   │   │

│   │   │           ├── dao

│   │   │

│   │   │           │   ├── CourseDAO.java

│   │   │

│   │   │           │   ├── DBConnection.java

│   │   │

│   │   │           │   └── UserDAO.java

│   │   │

│   │   │           ├── model

│   │   │

│   │   │           │   ├── Course.java

│   │   │

│   │   │           │   └── User.java

│   │   │

│   │   │           └── service

│   │   │

│   │   │               ├── CourseService.java

│   │   │

│   │   │               └── UserService.java

│   │   │

│   │   └── test

│   │   

│   │      └── java

│   │   

│   │           └── com

│   │    

│   │               └── lms

│

│   │                   └── MainTest.java

│   └── test

│

│       └── resources

│

│           └── META-INF

│

│               └── resources

│

│                   └── application.properties

│

│

└──WEBAPP

├── index.jsp

├── dashboard.jsp

├── courses.jsp

├── assignments.jsp

├── profile.jsp

├── index.js

├── profile.js

├── dashboard.js

├── courses.js

├── assignments.js

├── lms.jpg


**Prerequisites**
-------------
- Java Development Kit (JDK) 8 or higher
- MySQL Database
- Maven for dependency management
- Eclipse IDE

**Running the Application in Eclipse IDE**
---------------------------------------
Step 1: Clone the Repository
   1. Open a terminal or command prompt.
   2. Clone the repository.
   3. Navigate to the project directory.

Step 2: Import the Project into Eclipse
   1. Open Eclipse IDE.
   2. Go to File > Import....
   3. Select Existing Maven Projects under Maven and click Next.
   4. Browse to the directory where you cloned the project and select it.
   5. Click Finish to import the project.

Step 3: Create a Database using MySQL Workbench
1. Install MySQL Server
2. Create database using sql commands given in schema in src/schema.sql.

Step 4: Configure Database Connection
   1. Open the file DBConnection.java located at 'src/main/java/com/sms/dao/DBConnection.java'
   2. Ensure that the database connection details (URL, USER, PASSWORD) are correctly set
      Update connection details:
         - URL: jdbc:mysql://localhost:3306/learning_management
         - USER: root // or your MySQL username
         - PASSWORD: root // or your MySQL password

Step 5: Add Dependencies
   1. Ensure that the required dependencies (like MySQL Connector/J) are specified in the pom.xml file.
   2. Right-click on the project in Eclipse, and select Maven > Update Project... to download the dependencies.

   Dependencies:
      - MYSQL
      - MySQL Connector/J
      - MYSQL Workbench

Step 6: Run the Application
   1. Open the Main.java file located at src\mainn\java\com\lms\Main.java.
   2. Right-click on Main.java and select Run As > Java Application.
   3. The application will run, and you should see output in the console displaying the added students and teachers.

By following these steps, you should be able to run the Learning Management System project in Eclipse IDE successfully.

Features
--------
- Add new students
- Add new teachers
- Retrieve all students
- Retrieve all teachers

**Running WebApp in browser**
-----------------------------
Step 1: Clone the Repository

1. Open a terminal or command prompt.
2. Clone the repository.
3. All files of web development based present in WEBAPP folder in the repository.
4. Navigate to the project directory.
5. Step 2: Import Files in VSCode.

Step 2: Open VSCode.
1. Go to File > Import....
2. Browse to the directory where you cloned the project and select it.
3. CLick on Import.
4. Run the file by opening the Index (1).html file in Browser.

Step 3: Accessing The Learning Management System.

Username: admin
Password: admin

1. Once entering the default username and password user will be redirected to the Dashboard.
2. Once in Dashboard user can access all the features of learning management system.

**Features in WebApp**
----------------------
Assignment Submission
Profile Updation
Courses Content/Enrollment
TimeLine of Assignments

## New Functionalities Added

### 1. Create and Configure Servlets
- Added `RegistrationServlet` for handling user registration.
- Added `ProfileServlet` for displaying and updating user profiles.

### 2. Implement doGet and doPost Methods
- `doGet`: Used for rendering JSP pages with pre-fetched user data.
- `doPost`: Handles form submissions and user input processing.

### 3. Implement User Registration and Profile Using Servlets
- **Registration**: Users can register using a form, and the data is stored in the database.
- **Profile**: Users can view and edit their profiles dynamically.

### 4. Integrate JSP with Servlets
- Servlets act as controllers, forwarding requests to JSP pages for rendering dynamic content.

### 5. Use JSTL and EL in JSP Pages
- Used **JSTL** (JavaServer Pages Standard Tag Library) for looping and conditional rendering.
- Used **EL** (Expression Language) for dynamic content display.

Database Schema
---------------
USER Table:
-id (Primary Key)
-name
-password
-role

COURSE Table
-ID(Primary key)
-Title 
-Description
-Teacher Id (Foreign key From 'users' Table)

ENROLLMENT TABLE
-Id
-UserId
-CourseId

Troubleshooting
---------------
- Ensure MySQL server is running
- Verify database connection parameters
- Check that all dependencies are installed

