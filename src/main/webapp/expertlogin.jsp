<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Expert Login</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
        :root {
            --primary-color: #007bff;
            --secondary-color: #6c757d;
            --background-color: #f4f7f6;
            --text-color: #333;
            --white: #ffffff;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background-color: var(--background-color);
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            line-height: 1.6;
        }

        .login-container {
            background-color: var(--white);
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 450px;
            padding: 40px;
            transition: all 0.3s ease;
        }

        .login-container:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.12);
        }

        .login-header {
            text-align: center;
            margin-bottom: 30px;
        }

        .login-header h2 {
            color: var(--primary-color);
            font-weight: 700;
            margin-bottom: 10px;
        }

        .login-header p {
            color: var(--secondary-color);
            font-size: 0.9rem;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            color: var(--text-color);
            font-weight: 500;
        }

        .form-control {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid #e0e0e0;
            border-radius: 8px;
            font-size: 0.95rem;
            transition: all 0.3s ease;
        }

        .form-control:focus {
            outline: none;
            border-color: var(--primary-color);
            box-shadow: 0 0 0 3px rgba(0, 123, 255, 0.1);
        }

        .btn {
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 8px;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .btn-login {
            background-color: var(--primary-color);
            color: var(--white);
            margin-bottom: 15px;
        }

        .btn-login:hover {
            background-color: #0056b3;
        }

        .btn-register {
            background-color: var(--secondary-color);
            color: var(--white);
        }

        .btn-register:hover {
            background-color: #565e64;
        }

        .form-footer {
            text-align: center;
            margin-top: 20px;
        }

        .form-footer a {
            color: var(--primary-color);
            text-decoration: none;
            font-size: 0.9rem;
        }

        .form-footer a:hover {
            text-decoration: underline;
        }

        .required {
            color: red;
            margin-left: 4px;
        }

        @media (max-width: 480px) {
            .login-container {
                padding: 25px;
                margin: 20px;
            }
        }
    </style>
</head>
<body>
    <%@ include file="mainnavbar.jsp" %>
    
    <div class="login-container">
        <div class="login-header">
            <h2>Expert Login</h2>
            <p>Welcome back! Please login to your account</p>
        </div>
        
        <form action="/checkexpertlogin" method="post">
            <div class="form-group">
                <label for="email">Email Address <span class="required">*</span></label>
                <input type="email" id="email" name="email" class="form-control" 
                       placeholder="Enter your email" required 
                       pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
                       title="Please enter a valid email address">
            </div>
            
            <div class="form-group">
                <label for="password">Password <span class="required">*</span></label>
                <input type="password" id="password" name="password" class="form-control" 
                       placeholder="Enter your password" required 
                       minlength="8"
                       title="Password must be at least 8 characters long">
            </div>
            
            <button type="submit" class="btn btn-login">Login</button>
            
            <div class="form-footer">
                <a href="/forgot-password">Forgot Password?</a>
            </div>
        </form>
        
        <div class="form-footer">
            <p>Don't have an account? 
                <a href="ExpertRegistration">Register Here</a>
            </p>
        </div>
    </div>
</body>
</html>