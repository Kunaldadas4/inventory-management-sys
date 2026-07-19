<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Product List</title>
<!-- Bootstrap CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom CSS -->
<style>
body {
	background-color: #f8f9fa;
	color: #343a40;
	padding-top: 80px;
		background-color:#ccc;
}

.container {
	background-color: #ffffff;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	padding: 20px;
	margin-top: 50px;
}

h2 {
	color: #007bff;
	font-weight: 600;
}

.table thead th {
	background-color: #007bff;
	color: #ffffff;
	text-align: center;
}

.table tbody tr:nth-child(even) {
	background-color: #f2f2f2;
}

.table tbody tr:hover {
	background-color: #e9ecef;
}

.btn-primary {
	background-color: #007bff;
	border: none;
}

.btn-primary:hover {
	background-color: #0056b3;
}

.text-danger {
	color: #dc3545 !important;
}

.text-center {
	text-align: center;
}

.btn-container {
	display: flex;
	justify-content: center;
	margin-top: 20px;
}

 nav {
            background-color: black; /* Bootstrap primary color */
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
	<div class="container ">
		<h2 class="text-center mb-4">Product List</h2>

		<div class="table-responsive">
			<table class="table table-bordered table-striped mx-auto">
				<thead class="thead-dark">
					<tr>
						<th>Product ID</th>
						<th>Product Name</th>
						<th>Description</th>
						<th>Category</th>
						<th>Price</th>
						<th>Stock Level</th>
					</tr>
				</thead>
				<tbody>
					<%
					Connection conn = null;
					Statement stmt = null;
					ResultSet rs = null;
					try {
						// Database connection setup (modify these details as needed)
						String dbURL = "jdbc:mysql://tokaido.proxy.rlwy.net:38953/railway?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
						String dbUser = "root";
						String dbPassword = "XqWYRurpdWpjhNxofvATWTxkxkSzCjDe";
						
						

						Class.forName("com.mysql.cj.jdbc.Driver");
						conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);
						stmt = conn.createStatement();

						String sql = "SELECT * FROM products";
						rs = stmt.executeQuery(sql);

						// Iterate through the result set and display data
						while (rs.next()) {
							int productId = rs.getInt("productid");
							String productName = rs.getString("productname");
							String description = rs.getString("description");
							String category = rs.getString("category");
							double price = rs.getDouble("price");
							int stockLevel = rs.getInt("stocklevel");
					%>
					<tr>
						<td><%=productId%></td>
						<td><%=productName%></td>
						<td><%=description%></td>
						<td><%=category%></td>
						<td>$<%=String.format("%.2f", price)%></td>
						<td><%=stockLevel%></td>
					</tr>
					<%
					}
					} catch (Exception e) {
					e.printStackTrace();
					%>
					<tr>
						<td colspan="6" class="text-center text-danger">Error
							retrieving data</td>
					</tr>
					<%
					} finally {
					// Close resources
					try {
						if (rs != null)
							rs.close();
						if (stmt != null)
							stmt.close();
						if (conn != null)
							conn.close();
					} catch (SQLException ex) {
						ex.printStackTrace();
					}
					}
					%>
				</tbody>
			</table>
		</div>

		<div class="btn-container">
			<a href="home.jsp"><button type="button"
					class="btn btn-primary btn-sm">Home</button></a>
		</div>
			<div class="btn-container">
			<a href="deleteproduct.jsp"><button type="button"
					class="btn btn-danger btn-sm">Delete</button></a>
		</div>
	</div>

	<!-- Bootstrap JS and dependencies -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
