<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DashBoard</title>
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
            color: white ;
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
            color: var(--primary-color);
            cursor: pointer;
            color: black;
        }
        #dashboardLink {
            margin-top: 28px;
        }
        #dash {
            text-align: center;
        }
        #welcome {
            text-align: center;
            font-size: 20px;
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

        .calendar,
        .timeline {
            background: white;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .calendar-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 10px;
        }

        .calendar .days {
            display: grid;
            grid-template-columns: repeat(7, 1fr);
            gap: 5px;
            text-align: center;
        }

        .calendar .day {
            padding: 10px;
            border-radius: 4px;
            background: var(--light-color);
        }

        .calendar .day.today {
            background: var(--secondary-color);
            color: white;
        }

        .timeline h3 {
            color: var(--secondary-color);
            margin-bottom: 15px;
        }

        .timeline .timeline-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .timeline .filter-box {
            margin-top: 15px;
            display: flex;
            gap: 10px;
        }

        .timeline .activity-list {
            margin-top: 20px;
            border-top: 1px solid #eaeaea;
            padding-top: 15px;
        }

        .timeline .activity-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 0;
            border-bottom: 1px solid #eaeaea;
        }

        .timeline .activity-item:last-child {
            border-bottom: none;
        }

        .timeline .activity-item p {
            margin: 0;
        }

        .timeline .btn {
            font-size: 0.9rem;
        }

        .dashboard-header {
            margin-bottom: 30px;
        }

        .dashboard-header h2 {
            font-size: 32px;
            color: var(--primary-color);
        }

        .dashboard-header p {
            font-size: 16px;
            color: var(--text-color);
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <ul class="nav flex-column">
            <li class="nav-item">
                <a class="nav-link active" href="dashboard.jsp" id="dashboardLink">Dashboard</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="assignments.jsp" id="assignmentsLink">Assignments</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="courses.jsp" id="coursesLink">Courses</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="profile.jsp" id="profileLink">Profile</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="index.jsp" id="logoutlink">Log Out</a>
            </li>
        </ul>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <button class="toggle-btn" id="toggleBtn">&#9776;</button>

        <div class="dashboard-header">
            <h2 id="dash">Dashboard</h2>
            <p id="welcome">Welcome to your university portal, where you can manage your assignments, calendar, and more.</p>
        </div>

        <div class="row">
            <!-- Calendar Section -->
            <div class="col-md-8 mb-4">
                <div class="calendar">
                    <div class="calendar-header">
                        <button class="btn btn-secondary btn-sm" onclick="prevMonth()">Previous</button>
                        <h4 id="monthYear">December 2024</h4>
                        <button class="btn btn-secondary btn-sm" onclick="nextMonth()">Next</button>
                    </div>
                    <div class="days" id="days">
                        <!-- Days will be dynamically populated here -->
                    </div>
                </div>
            </div>

            <!-- Timeline Section -->
            <div class="col-md-4">
                <div class="timeline">
                    <h3>Timeline</h3>
                    <div class="timeline-header">
                        <select class="form-select form-select-sm">
                            <option>Next 7 days</option>
                            <option>Next 14 days</option>
                        </select>
                        <button class="btn btn-sm btn-outline-secondary">Sort by dates</button>
                    </div>
                    <div class="filter-box">
                        <input type="text" class="form-control form-control-sm" placeholder="Search by activity type or name">
                    </div>
                    <div class="activity-list">
                        <!-- Placeholder for empty list -->
                        <div class="activity-item">
                            <p>No activities found.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<script src="dashboard.js"></script> 
</body>
</html>