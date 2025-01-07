<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(135deg, #00b0ff, #0091ea);
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            background-image: url("lms.jpg"); 
            background-size: cover;
        }

        .container {
            opacity: 0.9;
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
            box-sizing: border-box;
        }

        h2 {
            text-align: center;
            color: #007bb5;
            margin-bottom: 30px;
        }

        .form-control {
            border-radius: 30px;
            padding: 15px;
            font-size: 16px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            transition: border 0.3s ease;
            width: 100%;
            box-sizing: border-box;
        }

        .form-control:focus {
            border-color: #007bb5;
            box-shadow: 0 0 5px rgba(0, 123, 181, 0.5);
        }

        .btn {
            border-radius: 30px;
            padding: 12px;
            font-size: 18px;
            background-color: #007bb5;
            border: none;
            color: #fff;
            width: 100%;
            transition: background-color 0.3s ease;
            box-sizing: border-box;
        }

        .btn:hover {
            background-color: #005f87;
        }

        .invalid-feedback {
            display: block;
            color: #dc3545;
            font-size: 14px;
            margin-top: 5px;
        }

        .form-group {
            position: relative;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Learning Management System</h2>
        <form id="loginForm" class="form-signin" action="loginServlet" method="post">
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" class="form-control" id="username" name="username" placeholder="Enter username" required>
                <div class="invalid-feedback">Please enter your username.</div>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
                <div class="invalid-feedback">Please enter your password.</div>
            </div>
            <button type="submit" class="btn btn-primary btn-block">Login</button>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="index.js"></script>
</body>
</html>