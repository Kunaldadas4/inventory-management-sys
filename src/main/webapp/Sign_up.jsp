<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f0f0f0; /* Grey background color for the whole page */
        }
        .container {
            max-width: 500px;
            margin-top: 50px;
        }
        .signup-container {
            border: 1px solid #ddd; /* Border color */
            border-radius: 8px; /* Rounded corners */
            background-color: #f0f8ff; /* Background color of the container *
            padding: 20px; /* Padding inside the container */
        }
        .signup-heading {
            color: #007bff; /* Heading color */
            font-weight: bold;
            margin-bottom: 20px; /* Space below the heading */
        }
        .login-link {
            margin-top: 15px;
        }
        
         body {
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(to right,   #ccc, #ccc);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin-bottom: 50px;
            
        }

        /* Sign-Up Form Container */
        form {
        	margin-left: 70px;
            background: #fff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 320px;
            box-sizing: border-box;
        }


        /* Form Heading */
        h2 {
            margin-bottom: 20px;
            font-weight: 700;
            color: #333;
            text-align: center;
        }

        /* Input Fields */
        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            background: #f9f9f9;
            font-size: 16px;
            transition: all 0.3s ease;
        }

        /* Input Focus Effect */
        input[type="text"]:focus,
        input[type="email"]:focus,
        input[type="password"]:focus {
            border-color: #007bff;
            box-shadow: 0 0 8px rgba(0, 123, 255, 0.2);
            outline: none;
            background: #fff;
        }

        /* Submit Button */
        button[type="submit"] {
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 5px;
            background: #007bff;
            color: #fff;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: background 0.3s ease, transform 0.2s ease;
        }

        /* Button Hover Effect */
        button[type="submit"]:hover {
            background: #37c545;
            transform: translateY(-2px);
        }

        /* Link Styling */
        a {
            display: block;
            text-align: center;
            margin-top: 15px;
            color: #007bff;
            text-decoration: none;
            font-size: 14px;
            transition: color 0.3s ease;
        }

        /* Link Hover Effect */
        a:hover {
            color: #2409ee;
        }

        /* Mobile Responsiveness */
        @media (max-width: 480px) {
            form {
                width: 90%;
                padding: 20px;
            }

            h2 {
                font-size: 20px;
            }

            input[type="text"],
            input[type="email"],
            input[type="password"] {
                font-size: 14px;
            }

            button[type="submit"] {
                padding: 10px;
                font-size: 14px;
            }

            a {
                font-size: 12px;
            }
        }
    </style>
</head>
<body>
    <div class="container ">
        <div class="signup-container ">
            <h2 class="text-center signup-heading">Sign Up</h2>
            <form action="signupHandler" method="post">
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" class="form-control" id="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" class="form-control" id="username" name="username" required>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" id="password" name="password" required>
                </div>
                <button type="submit" class="btn btn-primary btn-block">Sign Up</button>
            </form>
            <div class="text-center login-link">
              <p> Already have an account?  <a href="login.jsp">Login here</a></p>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
