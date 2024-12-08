<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>

    <!-- Bootstrap CSS and FontAwesome for icons -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">

    <style>
        /* General styling */
        body {
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        /* Navbar Styling */
        nav {
            background: linear-gradient(to right, #006B5E, #004d40);
            padding: 1rem;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        nav h2 {
            color: white;
            font-weight: bold;
            margin: 0;
            font-size: 2rem;
        }

        nav a {
            color: white;
            text-decoration: none;
            font-weight: 500;
            letter-spacing: 0.5px;
            padding: 8px 20px;
            transition: all 0.3s ease;
        }

        nav a:hover {
            background: rgba(255, 255, 255, 0.1);
            border-radius: 4px;
        }

        /* Dashboard Content Styling */
        .dashboard-content {
            margin-top: 80px;
            padding: 20px;
        }

        .card {
            margin: 10px 0;
        }

        .action-buttons {
            display: flex;
            justify-content: space-around;
            margin-bottom: 30px;
        }

        .btn {
            font-size: 1.2rem;
            padding: 12px 20px;
            border-radius: 5px;
            transition: all 0.3s ease;
        }

        .btn:hover {
            background-color: #006B5E;
            color: white;
        }

        .icon {
            font-size: 30px;
        }

        .card .card-body {
            text-align: center;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav>
        <h2>Admin Dashboard</h2>
        <a href="index.jsp">Logout</a>
    </nav>

    <!-- Dashboard Content -->
    <div class="container dashboard-content">
        <!-- Action Buttons -->
        <div class="action-buttons">
            <a href="Allstudents.jsp" class="btn btn-primary">
                <i class="fas fa-users icon"></i> View All Students
            </a>
            <a href="staffRegistration.jsp" class="btn btn-warning">
                <i class="fas fa-user-plus icon"></i> Staff Registration
            </a>
        </div>

        <!-- Dashboard Cards (Example for Graphs and Icons) -->
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header bg-success text-white">
                        <i class="fas fa-chart-line"></i> Student Statistics
                    </div>
                    <div class="card-body">
                        <h4>Total Students</h4>
                        <canvas id="studentChart"></canvas> <!-- Replace with actual graph -->
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card">
                    <div class="card-header bg-primary text-white">
                        <i class="fas fa-graduation-cap"></i> Course Completion
                    </div>
                    <div class="card-body">
                        <h4>Course Completion Rate</h4>
                        <canvas id="completionChart"></canvas> <!-- Replace with actual graph -->
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card">
                    <div class="card-header bg-danger text-white">
                        <i class="fas fa-users"></i> Staff Overview
                    </div>
                    <div class="card-body">
                        <h4>Total Staff Members</h4>
                        <canvas id="staffChart"></canvas> <!-- Replace with actual graph -->
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- JavaScript Libraries (for charts and functionality) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        // Example code for initializing charts
        const ctxStudent = document.getElementById('studentChart').getContext('2d');
        const studentChart = new Chart(ctxStudent, {
            type: 'line', // Example chart type
            data: {
                labels: ['January', 'February', 'March', 'April', 'May'],
                datasets: [{
                    label: 'Number of Students',
                    data: [200, 250, 300, 350, 400],
                    borderColor: 'rgba(75, 192, 192, 1)',
                    fill: false
                }]
            }
        });

        const ctxCompletion = document.getElementById('completionChart').getContext('2d');
        const completionChart = new Chart(ctxCompletion, {
            type: 'bar', // Example chart type
            data: {
                labels: ['Math', 'Science', 'History', 'English'],
                datasets: [{
                    label: 'Completion Percentage',
                    data: [85, 90, 80, 75],
                    backgroundColor: 'rgba(54, 162, 235, 0.2)',
                    borderColor: 'rgba(54, 162, 235, 1)',
                    borderWidth: 1
                }]
            }
        });

        const ctxStaff = document.getElementById('staffChart').getContext('2d');
        const staffChart = new Chart(ctxStaff, {
            type: 'pie', // Example chart type
            data: {
                labels: ['Teaching Staff', 'Non-Teaching Staff'],
                datasets: [{
                    label: 'Staff Distribution',
                    data: [60, 40],
                    backgroundColor: ['#FF6384', '#36A2EB']
                }]
            }
        });
    </script>
</body>
</html>
