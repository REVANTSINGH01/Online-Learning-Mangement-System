<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile</title>
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
            z-index: 1000;
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
            color: black;
            cursor: pointer;
            z-index: 1001;
        }
        #dashboardLink {
            margin-top: 28px;
        }
        /* Main content */
        .main-content {
            margin-left: 0;
            padding: 20px;
            transition: margin-left 0.3s ease;
        }

        .main-content.collapsed {
            margin-left: 250px;
        }
        .profile-container {
            background: white;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            padding: 30px;
            max-width: 800px;
            margin: 0 auto;
        }

        .profile-header {
            text-align: center;
            margin-bottom: 30px;
        }

        .profile-header img {
            width: 50%;
            height: 50%;
            border-radius: 50%;
            object-fit: cover;
            border: 4px solid var(--primary-color);
        }

        .profile-details .form-group {
            margin-bottom: 20px;
        }

        .profile-details label {
            font-weight: bold;
            color: var(--text-color);
        }

        .profile-details .form-control {
            background-color: var(--background-color);
            border: none;
        }

        .btn-update {
            background-color: var(--primary-color);
            color: white;
        }

        .btn-update:hover {
            background-color: var(--accent-color);
            color: white;
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
                <a class="nav-link" href="assignments.jsp" id="assignmentsLink">Assignments</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="courses.jsp" id="coursesLink">Courses</a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" href="#" id="profileLink">Profile</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="index.jsp" id="logoutLink">Log Out</a>
            </li>
        </ul>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <!-- Sidebar Toggle Button -->
        <button class="toggle-btn" id="toggleBtn">&#9776;</button>

        <div class="profile-container">
            <div class="profile-header">
                <img src="/api/placeholder/150/150" alt="Profile Picture" id="profilePicture" width="100" height="200">
                <h2 class="mt-3">John Doe</h2>
                <p class="text-muted">Computer Science Student</p>
            </div>

            <div class="profile-details">
                <form>
                    <div class="form-group row mb-3">
                        <label for="fullName" class="col-sm-3 col-form-label">Full Name</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="fullName" value="John Doe" readonly>
                        </div>
                    </div>
                    <div class="form-group row mb-3">
                        <label for="email" class="col-sm-3 col-form-label">Email</label>
                        <div class="col-sm-9">
                            <input type="email" class="form-control" id="email" value="john.doe@university.edu" readonly>
                        </div>
                    </div>
                    <div class="form-group row mb-3">
                        <label for="studentID" class="col-sm-3 col-form-label">Student ID</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="studentID" value="12345678" readonly>
                        </div>
                    </div>
                    <div class="form-group row mb-3">
                        <label for="major" class="col-sm-3 col-form-label">Major</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="major" value="Computer Science" readonly>
                        </div>
                    </div>
                    <div class="form-group row mb-3">
                        <label for="enrollmentDate" class="col-sm-3 col-form-label">Enrollment Date</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="enrollmentDate" value="September 2022" readonly>
                        </div>
                    </div>

                    <div class="text-center mt-4">
                        <button type="button" class="btn btn-update" id="editProfileBtn">Edit Profile</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script src="profile.js"></script>
</body>
</html>