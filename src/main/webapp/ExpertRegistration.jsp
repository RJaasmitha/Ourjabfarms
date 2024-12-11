<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Expert Registration</title>
    <!-- CSS Links -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <style>
        /* Styling from the User Registration form */
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

        .btn-submit {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: 600;
            background-color: #5cb85c;
            color: white;
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
    <!-- Expert Registration Form -->
    <div class="registration-form">
        <h3>Expert Registration</h3>
        <form action="/insertexpert" method="post">
            <div class="form-group">
                <label for="name">Full Name <span class="required">*</span></label>
                <input type="text" id="name" name="name" class="form-control" placeholder="Enter your full name" required>
            </div>
            <div class="form-group">
                <label for="email">Email Address <span class="required">*</span></label>
                <input type="email" id="email" name="email" class="form-control" placeholder="Enter your email address" required>
            </div>
            <div class="form-group">
                <label for="phoneNumber">Phone Number <span class="required">*</span></label>
                <input type="tel" id="phoneNumber" name="phoneNumber" class="form-control" placeholder="Enter your phone number" required>
            </div>
            <div class="form-group">
                <label for="expertise">Area of Expertise <span class="required">*</span></label>
                <input type="text" id="expertise" name="expertise" class="form-control" placeholder="Enter your expertise (e.g., Crop Science)" required>
            </div>
            <div class="form-group">
                <label for="qualifications">Qualifications <span class="required">*</span></label>
                <input type="text" id="qualifications" name="qualifications" class="form-control" placeholder="Enter your qualifications" required>
            </div>
            <div class="form-group">
                <label for="yearsOfExperience">Years of Experience <span class="required">*</span></label>
                <input type="number" id="yearsOfExperience" name="yearsOfExperience" class="form-control" placeholder="Enter your years of experience" required>
            </div>
            <div class="form-group">
                <label for="location">Location <span class="required">*</span></label>
                <input type="text" id="location" name="location" class="form-control" placeholder="Enter your location" required>
            </div>
            <div class="form-group">
                <label for="availability">Availability <span class="required">*</span></label>
                <select id="availability" name="availability" class="form-control" required>
                    <option value="">Select Availability</option>
                    <option value="Full-time">Full-time</option>
                    <option value="Part-time">Part-time</option>
                    <option value="Weekends">Weekends</option>
                </select>
            </div>
            <div class="form-group">
                <label for="password">Password <span class="required">*</span></label>
                <input type="password" id="password" name="password" class="form-control" placeholder="Create a password" required>
            </div>
            <div class="form-submit">
                <button type="submit" class="btn-submit">Register</button>
                <a href="/expertlogin" class="btn-login">Login</a>
            </div>
        </form>
    </div>
</body>

</html>
