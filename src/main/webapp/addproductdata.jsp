
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Product</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f4f4f9; /* Light background color */
            color: #333; /* Dark text color */
            padding-top:80px;
     		background-color:#ccc;
        }
        .container {
            max-width: 600px;
            margin-top: 50px;
            padding: 20px;
            background-color: #e0e0e0; /* Light gray background for the container */
            border-radius: 8px; /* Rounded corners */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow */
        }
        .container h2 {
            color: #007bff; /* Blue color for header */
            margin-bottom: 20px;
            font-weight: bold; /* Make header bold */
        }
        .btn-primary {
            background-color: #007bff; /* Blue color for button */
            border: none; /* Remove border */
        }
        .btn-primary:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }
        .form-group label {
            font-weight: bold; /* Bold labels */
            color: #343a40; /* Dark color for labels */
        }
        .form-control {
            border-radius: 4px; /* Rounded corners for input fields */
            border: 1px solid #ced4da; /* Light gray border */
        }
        .form-control:focus {
            border-color: #007bff; /* Blue border on focus */
            box-shadow: 0 0 0 0.2rem rgba(38, 143, 255, 0.25); /* Light blue shadow on focus */
        }
        .form-control.textarea {
            border-radius: 8px; /* Rounded corners for textarea */
        }
        .btn-small {
            width: auto; /* Adjust width to content */
            padding: 10px 20px; /* Smaller padding */
            font-size: 0.875rem; /* Smaller font size */
        }
        .text-center {
            text-align: center; /* Center text */
        }
        
        .jumbotron {
            background-color: #ffffff; /* White background for jumbotron */
            border-radius: 8px; /* Rounded corners */
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* Subtle shadow */
            padding: 2rem; /* Adequate padding */
        }
        .jumbotron h1 {
            color: #343a40; /* Dark text color */
        }
        .btn-primary {
            background-color: #007bff; /* Blue for buttons */
            border: none; /* Remove border */
        }
        .btn-primary:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }
        .btn-secondary {
            background-color: #6c757d; /* Secondary button color */
            border: none; /* Remove border */
        }
        .btn-secondary:hover {
            background-color: #5a6268; /* Darker gray on hover */
        }
        
                nav {
            background-color: 	black; /* Bootstrap primary color */
            padding: 10px;
        }

        nav a {
            color: white;
            margin: 5px 10px;
            text-decoration: none;
            font-weight: bold;
        }

        nav a:hover {
            color: #0b7af1; /* Lighter blue on hover */
        }
        
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
        
        
        
    </style>
     <nav class="navbar navbar-expand-sm navbar fixed-top">
        
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavId" aria-controls="collapsibleNavId" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="collapsibleNavId">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="home.jsp">Home</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Products
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="addproductdata.jsp">Add Product</a>
                        <a class="dropdown-item" href="updateproduct.jsp">Update Product</a>
                        <a class="dropdown-item" href="deleteproduct.jsp">Delete Product</a>
                        <a class="dropdown-item" href="showproduct.jsp">Show Products</a>
                    </div>
                </li>
            </ul>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="logout.jsp">Logout</a>
                </li>
            </ul>
        </div>
    </nav>
    
</head>
<body>
    <div class="container">
        <h2 class="text-center">Add Product</h2>
        <form action="addProductHandler" method="post">
            <div class="form-group">
                <label for="productid">Product ID</label>
                <input type="text" class="form-control" id="productid" name="productid" required>
            </div>
            <div class="form-group">
                <label for="productname">Product Name</label>
                <input type="text" class="form-control" id="productname" name="productname" required>
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea class="form-control textarea" id="description" name="description" rows="4"></textarea>
            </div>
            <div class="form-group">
                <label for="category">Category</label>
                <input type="text" class="form-control" id="category" name="category">
            </div>
            <div class="form-group">
                <label for="price">Price</label>
                <input type="number" class="form-control" id="price" name="price" step="0.01" required>
            </div>
            <div class="form-group">
                <label for="stocklevel">Stock Level</label>
                <input type="number" class="form-control" id="stocklevel" name="stocklevel" required>
            </div>
            <div class="text-center">
                <button type="submit"  class="btn btn-primary btn-small">Save</button>
            </div>
        </form>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
