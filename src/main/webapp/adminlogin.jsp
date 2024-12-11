<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800;900&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            background-color: #f4f4f4;
            overflow: hidden;
        }

        /* Centered Form Container */
        section {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 20px;
        }

        .box {
            position: relative;
        }

        /* Form Container */
        .form-container {
            max-width: 900px;
            background-color: white;
            border-radius: 10px;
            padding: 80px;
            box-shadow: 0 25px 45px rgba(0, 0, 0, 0.1);
            backdrop-filter: blur(5px);
            border: 1px solid rgba(255, 255, 255, 0.5);
        }

        h3 {
            color: #333;
            text-align: center;
            font-size: 24px;
            margin-bottom: 20px;
            text-decoration: underline;
        }

        h4 {
            color: red;
            text-align: center;
            font-size: 23px;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        td {
            padding: 10px;
        }

        label {
            font-weight: 500;
            color: #333;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 15px;
            border: 1px solid #ccc;
            border-radius: 8px;
            box-sizing: border-box;
            transition: border-color 0.3s;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            border-color: #5cb85c;
            outline: none;
        }

        .button-container {
            text-align: center;
        }

        input[type="submit"],
        input[type="reset"] {
            background-color: #5cb85c;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 4px;
            cursor: pointer;
            margin: 5px;
            font-weight: 600;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #4cae4c;
        }
    </style>
</head>
<body>

<%@ include file="mainnavbar.jsp" %>

<section>
    <div class="box">
        <div class="form-container">
            <!-- Display error or success message -->
            <h4>
                <c:out value="${message}" />
            </h4>

            <!-- Form Title -->
            <h3>Admin Login</h3>

            <!-- Login Form -->
            <form method="post" action="checkadminlogin">
                <table>
                    <tr>
                        <td><label for="auname">Enter Username</label></td>
                        <td><input type="text" id="auname" name="auname" required /></td>
                    </tr>
                    <tr>
                        <td><label for="apwd">Enter Password</label></td>
                        <td><input type="password" id="apwd" name="apwd" required /></td>
                    </tr>
                    <tr>
                        <td colspan="2" class="button-container">
                            <input type="submit" value="Login" />
                            <input type="reset" value="Clear" />
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</section>

</body>
</html>
