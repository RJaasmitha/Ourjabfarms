<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Farmer Registration</title>
    <!-- CSS Links -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }

        .registration-form {
            background-color: #fff;
            padding: 30px;
            margin: 50px auto;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            max-width: 600px;
        }

        .registration-form h3 {
            text-align: center;
            margin-bottom: 20px;
            font-weight: 600;
            color: #333;
        }

        .form-group label {
            font-weight: 500;
            margin-bottom: 5px;
            display: block;
            color: #555;
        }

        .form-control {
            border-radius: 5px;
            border: 1px solid #ccc;
            padding: 10px;
            width: 100%;
        }

        .form-submit {
            text-align: center;
            margin-top: 20px;
        }

        .btn-submit, .btn-login {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: 600;
            color: white;
        }

        .btn-submit {
            background-color: #5cb85c;
        }

        .btn-submit:hover {
            background-color: #4cae4c;
        }

        .btn-login {
            background-color: #007bff;
            margin-top: 10px;
        }

        .btn-login:hover {
            background-color: #0056b3;
        }
    </style>
</head>

<body>

<%@ include file="mainnavbar.jsp" %>
    <!-- Farmer Registration Form -->
    <div class="registration-form">
        <h3>Farmer Registration</h3>
        <form action="/insertfarmer" method="post">
            <div class="form-group">
                <label for="firstName">First Name <span class="required">*</span></label>
                <input type="text" id="firstName" name="firstName" class="form-control" placeholder="Enter your first name" required>
            </div>
            <div class="form-group">
                <label for="lastName">Last Name <span class="required">*</span></label>
                <input type="text" id="lastName" name="lastName" class="form-control" placeholder="Enter your last name" required>
            </div>
            <div class="form-group">
                <label for="email">Email Address <span class="required">*</span></label>
                <input type="email" id="email" name="email" class="form-control" placeholder="Enter your email address" required>
            </div>
            <div class="form-group">
                <label for="phone">Phone Number <span class="required">*</span></label>
                <input type="text" id="phone" name="phone" class="form-control" placeholder="Enter your phone number" required>
            </div>
            <div class="form-group">
                <label for="country">Country <span class="required">*</span></label>
                <select id="country" name="country" class="form-control" required>
                    <option value="India">India</option>

                    <option value="Albania">Albania</option>
                </select>
            </div>
            <div class="form-group">
                <label for="state">State <span class="required">*</span></label>
                <input type="text" id="state" name="state" class="form-control" placeholder="Enter your state" required>
            </div>
            <div class="form-group">
                <label for="address">Address <span class="required">*</span></label>
                <input type="text" id="address" name="address" class="form-control" placeholder="Enter your address" required>
            </div>
            <div class="form-group">
                <label for="password">Password <span class="required">*</span></label>
                <input type="password" id="password" name="password" class="form-control" placeholder="Create a password" required>
            </div>
            <div class="form-submit">
                <button type="submit" class="btn-submit">Register</button>
                <a href="/farmerlogin" class="btn-login">Login</a>
            </div>
        </form>
    </div>
</body>

</html>
    