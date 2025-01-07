<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assignments</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        :root {
            --primary-color: #4A90E2;
            --secondary-color: #F5A623;
            --accent-color: #E94E77;
            --background-color: #F3F8FB;
            --text-color: #333333;
            --light-color: #E4E9F2;
        }

        body {
            background-color: var(--background-color);
            font-family: 'Arial', sans-serif;
            overflow-x: hidden;
        }

        /* Sidebar Styles */
        .sidebar {
            height: 100vh;
            background: var(--primary-color);
            color: white;
            width: 250px;
            position: fixed;
            top: 0;
            left: -250px;
            transition: all 0.3s ease;
            padding-top: 30px;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
        }

        .sidebar.active {
            left: 0;
        }

        .sidebar h3 {
            font-size: 24px;
            margin-bottom: 40px;
            text-align: center;
            color: white;
        }

        .sidebar .nav-link {
            color: white;
            font-size: 18px;
            padding: 10px;
            text-transform: uppercase;
        }

        .sidebar .nav-link:hover {
            background-color: var(--accent-color);
            color: white;
            border-radius: 5px;
        }

        .sidebar .nav-link.active {
            background-color: var(--secondary-color);
        }

        /* Sidebar toggle button */
        .toggle-btn {
            position: absolute;
            top: 20px;
            left: 20px;
            font-size: 30px;
            background: none;
            border: none;
            cursor: pointer;
            color: black;
        }

        #dashboardLink {
            margin-top: 28px;
        }

        /* Main content */
        .main-content {
            margin-left: 0; /* Start with no margin */
            padding: 20px;
            transition: margin-left 0.3s ease;
        }

        .main-content.collapsed {
            margin-left: 250px; /* Margin when sidebar is open */
        }

        /* Assignments Section */
        .assignments-header {
            margin: 20px 0;
            text-align: center;
            color: var(--primary-color);
        }

        .assignments-header h2 {
            font-size: 32px;
        }

        .assignments-header p {
            font-size: 18px;
            color: var(--text-color);
        }

        .assignment-card {
            background-color: white;
            border-radius: 8px;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .assignment-card h5 {
            color: var(--primary-color);
        }

        .assignment-card .icon {
            font-size: 30px;
            color: var(--secondary-color);
        }

        .btn-submit {
            background-color: var(--primary-color);
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .btn-submit:hover {
            background-color: var(--accent-color);
        }

        .status-label {
            padding: 5px 10px;
            border-radius: 5px;
            font-size: 14px;
            color: white;
        }

        .status-label.pending {
            background-color: var(--secondary-color);
        }

        .status-label.completed {
            background-color: var(--primary-color);
        }

        .status-label.overdue {
            background-color: var(--accent-color);
        }
    </style>
</head>
<body>
    <!-- Sidebar -->
    <div class="sidebar">
        <ul class="nav flex-column">
            <li class="nav-item">
                <a class="nav-link" href="dashboard.jsp" id="dashboardLink">Dashboard</a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" href="assignments.jsp">Assignments</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="courses.jsp">Courses</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="profile.jsp">Profile</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="index.jsp">Log Out</a>
            </li>
        </ul>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <button class="toggle-btn" id="toggleBtn">&#9776;</button>

        <!-- Assignments Header -->
        <div class="assignments-header">
            <h2>Your Assignments</h2>
            <p>Track, manage, and submit your assignments on time.</p>
        </div>

        <!-- Assignment List -->
        <div class="row">
            <div class="col-md-6">
                <div class="assignment-card">
                    <div class="d-flex align-items-center mb-3">
                        <i class="fas fa-book icon"></i>
                        <h5 class="ms-3 mb-0">DSA Assignment - Array</h5>
                    </div>
                    <p><strong>Due Date:</strong> December 12, 2024</p>
                    <p><strong>Instructions:</strong> Solve all the problems in the attached worksheet and submit as a PDF.</p>
                    <span class="status-label pending">Pending</span>
                    <div class="mt-3">
                        <button class="btn btn-submit">Submit Assignment</button>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="assignment-card">
                    <div class="d-flex align-items-center mb-3">
                        <i class="fas fa-laptop-code icon"></i>
                        <h5 class="ms-3 mb-0">CS Assignment - Java Basics</h5>
                    </div>
                    <p><strong>Due Date:</strong> December 10, 2024</p>
                    <p><strong>Instructions:</strong> Write a Java program to demonstrate inheritance and polymorphism.</p>
                    <span class="status-label completed">Completed</span>
                    <div class="mt-3">
                        <button class="btn btn-submit" disabled>View Submission</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- JavaScript -->
    <script src="assignments.js"></script>
</body>
</html>