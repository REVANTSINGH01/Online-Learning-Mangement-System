<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Courses</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        :root {
            --primary-color: #4A90E2;
            --secondary-color: #F5A623;
            --accent-color: #E94E77;
            --background-gradient: linear-gradient(to bottom right, #f3f8fb, #e8eef5);
            --card-bg-gradient: linear-gradient(to top right, #4a90e2, #72b9f8);
            --modal-bg-gradient: linear-gradient(to bottom, #ffffff, #f0f4f8);
            --container-border: rgba(0, 0, 0, 0.1);
        }

        body {
            background: var(--background-gradient);
            font-family: 'Arial', sans-serif;
            overflow-x: hidden;
            margin: 0;
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

        /* Main Content */
        .main-content {
            margin-left: 0;
            padding: 20px;
            transition: margin-left 0.3s ease;
        }

        .main-content.collapsed {
            margin-left: 250px;
        }

        h1 {
            text-align: center;
            color: var(--primary-color);
        }

        /* Course Container */
        .course-container {
            border: 1px solid var(--container-border);
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background: white;
            padding: 20px;
            margin-top: 20px;
        }

        /* Course Grid */
        .course-grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr); /* 2 columns */
            gap: 15px;
        }

        .course-card {
            background: var(--card-bg-gradient);
            color: white;
            padding: 15px;
            border-radius: 10px;
            text-align: center;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
            transition: transform 0.3s, box-shadow 0.3s;
            cursor: pointer;
        }

        .course-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2);
        }

        .course-card h5 {
            margin-top: 10px;
        }

        /* Modal Styles */
        .modal {
            display: none;
            position: fixed;
            z-index: 1000;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.8);
        }

        .modal-content {
            background: var(--modal-bg-gradient);
            margin: auto;
            padding: 20px;
            border-radius: 15px;
            max-width: 600px;
            color: #333;
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2);
            text-align: left;
        }

        .close-button {
            color: #aaa;
            font-size: 24px;
            font-weight: bold;
            position: absolute;
            right: 20px;
            top: 15px;
            cursor: pointer;
        }

        .close-button:hover {
            color: #333;
        }

        .modal-content h2 {
            color: var(--primary-color);
        }

        .modal-content button {
            background: var(--primary-color);
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .modal-content button:hover {
            background: var(--accent-color);
        }
    </style>
</head>
<body>
    <!-- Sidebar -->
    <div class="sidebar">
        <ul class="nav flex-column">
            <li class="nav-item"><a class="nav-link" href="dashboard.jsp" id="dashboardLink">Dashboard</a></li>
            <li class="nav-item"><a class="nav-link" href="assignments.jsp">Assignments</a></li>
            <li class="nav-item"><a class="nav-link active" href="courses.jsp">Courses</a></li>
            <li class="nav-item"><a class="nav-link" href="profile.jsp">Profile</a></li>
            <li class="nav-item"><a class="nav-link" href="index.jsp">Log Out</a></li>
        </ul>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <button class="toggle-btn" id="toggleBtn">&#9776;</button>

        <h1>Courses</h1>
        <div class="course-container">
            <div class="course-grid">
                <div class="course-card" onclick="showDetails('course1')">
                    <h5>Computer Organization</h5>
                </div>
                <div class="course-card" onclick="showDetails('course2')">
                    <h5>Data Structures</h5>
                </div>
                <div class="course-card" onclick="showDetails('course3')">
                    <h5>Design Thinking</h5>
                </div>
                <div class="course-card" onclick="showDetails('course4')">
                    <h5>Java Programming</h5>
                </div>
            </div>
        </div>

        <!-- Modal -->
        <div id="modal" class="modal">
            <div class="modal-content">
                <span class="close-button" onclick="closeModal()">&times;</span>
                <div id="course-details"></div>
            </div>
        </div>
    </div>

    <script src="courses.js"></script>
</body>
</html>