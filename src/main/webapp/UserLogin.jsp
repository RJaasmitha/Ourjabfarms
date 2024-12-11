<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="mainnavbar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Login</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
        :root {
            --primary-color: #4a90e2;
            --secondary-color: #2ecc71;
            --background-color: #f0f4f8;
            --text-color: #333;
            --white: #ffffff;
            --border-radius: 12px;
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

        .login-wrapper {
            width: 100%;
            max-width: 450px;
            padding: 20px;
        }

        .login-container {
            background-color: var(--white);
            border-radius: var(--border-radius);
            box-shadow: 0 15px 35px rgba(0,0,0,0.1);
            padding: 40px;
            transition: all 0.3s ease;
        }

        .login-container:hover {
            box-shadow: 0 20px 40px rgba(0,0,0,0.12);
            transform: translateY(-5px);
        }

        .login-header {
            text-align: center;
            margin-bottom: 30px;
        }

        .login-header h3 {
            font-size: 2rem;
            color: var(--primary-color);
            font-weight: 600;
            margin-bottom: 10px;
        }

        .login-header p {
            color: #6c757d;
            font-size: 0.9rem;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
            color: #495057;
        }

        .form-control {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid #ced4da;
            border-radius: 8px;
            transition: all 0.3s ease;
            font-size: 0.9rem;
        }

        .form-control:focus {
            border-color: var(--primary-color);
            box-shadow: 0 0 0 0.2rem rgba(74,144,226,0.25);
            outline: none;
        }

        .required {
            color: #dc3545;
            margin-left: 4px;
        }

        .btn-login {
            width: 100%;
            padding: 12px;
            background-color: var(--primary-color);
            color: var(--white);
            border: none;
            border-radius: 8px;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 1px;
            transition: all 0.3s ease;
            cursor: pointer;
        }

        .btn-login:hover {
            background-color: #3a7bd5;
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(74,144,226,0.4);
        }

        .form-footer {
            text-align: center;
            margin-top: 20px;
        }

        .form-footer a {
            color: var(--primary-color);
            text-decoration: none;
            font-weight: 500;
            transition: color 0.3s ease;
        }

        .form-footer a:hover {
            color: #2980b9;
            text-decoration: underline;
        }

        .register-link {
            margin-top: 15px;
            font-size: 0.9rem;
            color: #6c757d;
        }

        @media (max-width: 480px) {
            .login-container {
                padding: 25px;
                margin: 20px;
            }

            .login-header h3 {
                font-size: 1.5rem;
            }
        }
    </style>
</head>
<body>
    <div class="login-wrapper">
        <div class="login-container">
            <div class="login-header">
                <h3>Welcome Back</h3>
                <p>Login to access your account</p>
            </div>
            
            <form action="/checkuserlogin" method="post">
                <div class="form-group">
                    <label for="email">Email Address <span class="required">*</span></label>
                    <input type="email" id="email" name="email" class="form-control" 
                           placeholder="Enter your email" required 
                           pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$">
                </div>
                
                <div class="form-group">
                    <label for="password">Password <span class="required">*</span></label>
                    <input type="password" id="password" name="password" class="form-control" 
                           placeholder="Enter your password" required 
                           minlength="6">
                </div>
                
                <button type="submit" class="btn-login">Login</button>
                
                <div class="form-footer">
                    <a href="/forgot-password">Forgot Password?</a>
                </div>
            </form>
            
            <div class="form-footer register-link">
                <p>Don't have an account? 
                    <a href="UserRegister">Register Here</a>
                </p>
            </div>
        </div>
    </div>
</body>
</html>