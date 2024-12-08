<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Staff Registration</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #e0f7fa;
        }
        .registration-container {
            max-width: 400px;
            margin: 80px auto;
            padding: 30px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .btn-custom {
            background-color: #00796b;
            color: white;
        }
        .btn-custom:hover {
            background-color: #004d40;
        }
    </style>
</head>
<body>

<div class="registration-container">
    <h2 class="text-center">Staff Registration</h2>
    <form action="adminnavbar.jsp" method="post">
        <div class="form-group">
            <label for="id">ID</label>
            <input type="text" class="form-control" id="id" name="id" required>
        </div>
        <div class="form-group">
            <label for="username">Username</label>
            <input type="text" class="form-control" id="username" name="username" required>
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" class="form-control" id="email" name="email" required>
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" class="form-control" id="password" name="password" required>
        </div>
       <button type="submit" class="btn btn-custom btn-block" onclick="window.location.href='adminnavbar.jsp" style="background-color: #006B5E; color: white; border: none; padding: 10px 20px; border-radius: 5px; cursor: pointer;">Register</button>
        <% 
            String id = request.getParameter("id");
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            if (id != null && username != null && email != null && password != null) {
                String jdbcURL = "jdbc:mysql://localhost:3306/studentevalution";
                String jdbcUsername = "root";
                String jdbcPassword = "Likitha@28";
                Connection conn = null;

                try {
                    // Load the MySQL driver
                    Class.forName("com.mysql.cj.jdbc.Driver");

                    // Establish a connection
                    conn = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);

                    // Insert student data into the database
                    String query = "INSERT INTO staffregistration (id, email, username,password) VALUES (?, ?, ?, ?)";
                    PreparedStatement stmt = conn.prepareStatement(query);
                    stmt.setString(1, id);
                    stmt.setString(2, username);
                    stmt.setString(3, email);
                    stmt.setString(4, password);
                    int rowsInserted = stmt.executeUpdate();

                    if (rowsInserted > 0) {
                        // Redirect to index.jsp after successful registration
                        response.sendRedirect("index.jsp");
                    } else {
                        out.println("<div class='alert alert-danger text-center'>Registration failed. Please try again.</div>");
                    }

                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    try {
                        if (conn != null) conn.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
            }
        %>
    </form>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
