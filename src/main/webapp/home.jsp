<!-- <%@ page contentType="text/html;charset=UTF-8" language="java" %> -->
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home</title>
<!-- Bootstrap CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
.navbar-nav {
	margin-left: 10px; /* Align Home and Products links to the left */
}

.ml-auto {
	margin-left: auto; /* Push the Logout link to the right */
}

.container {
	margin-top: 20px;
}

/* General page styling */
body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background-color: #ccc; /* Light grey background */
	color: #343a40; /* Dark grey text */
	margin: 0;
	padding: 0;
}

/* Navigation bar styling */
nav {
	background-color: black	; /* Bootstrap primary color */
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

/* Main content styling */
main {
	max-width: 800px;
	margin: 50px auto;
	padding: 20px;
	background-color: white;
	box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
	border-radius: 8px;
	text-align: center;
}

/* Header styling */
h1 {
	font-size: 2.5rem;
	color: #007bff;
	margin-bottom: 20px;
}

/* Subtext styling */
p {
	font-size: 1.2rem;
	color: #6c757d;
}

/* Styling for buttons */
button {
	background-color: #007bff; /* Blue background */
	color: white;
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	font-size: 1rem;
}

button:hover {
	background-color: #0056b3; /* Darker blue on hover */
}
</style>
</head>
<body>
	<!-- Navbar -->
	<nav class="navbar navbar-expand-sm navbar fixed-top">
		<a class="navbar-brand" href="home.jsp"></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#collapsibleNavId" aria-controls="collapsibleNavId"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavId">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="home.jsp">Home</a>
				</li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Products </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="addproductdata.jsp">Add Product</a>
						<a class="dropdown-item" href="updateproduct.jsp">Update
							Product</a> <a class="dropdown-item" href="deleteproduct.jsp">Delete
							Product</a> <a class="dropdown-item" href="showproduct.jsp">Show
							Products</a>
					</div></li>
			</ul>
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link" href="logout.jsp">Logout</a>
				</li>
			</ul>
		</div>
	</nav>
	<!-- Page Content -->
	<div class="container" style="margin-top: 120px">
		<h2 class="text-center">Welcome to the Product Management System</h2>
		<p class="text-center">Use the navigation bar to manage products
			or log out.</p>
	</div>

	<!-- Bootstrap JS and dependencies -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
