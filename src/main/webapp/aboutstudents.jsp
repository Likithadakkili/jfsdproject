<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Student</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css">
    <style>
        .container1 {
            background-color: #333;
            padding: 15px;
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .head-title {
            font-size: 20px;
            font-weight: bold;
            margin: 0;
        }
        .head-menu {
            display: flex;
            gap: 20px;
        }
        .head-menu a {
            color: white;
            text-decoration: none;
            font-weight: bold;
        }
        .details-container {
            margin: 30px auto;
            width: 80%;
            background-color: #f8f9fa;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .details-header {
            font-size: 24px;
            font-weight: bold;
            text-align: center;
            margin-bottom: 20px;
        }
        .details-section {
            margin-bottom: 30px;
        }
        .details-section h5 {
            font-weight: bold;
            margin-bottom: 15px;
        }
        .courses-table {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container1">
        <h2 class="head-title">Student Information</h2>
        <div class="head-menu">
            <a href="seestudent.jsp"><i class="bi bi-house-door"></i> Home</a>
            <a href="index.jsp"><i class="bi bi-box-arrow-right"></i> Logout</a>
        </div>
    </div>

    <div class="details-container">
        <div class="details-header">Student Details</div>

        <!-- Personal Details -->
        <div class="details-section">
            <h5>Personal Information</h5>
            <p><strong>Name:</strong>ab</p>
            <p><strong>Student ID:</strong>1</p>
            <p><strong>Email:</strong> ab@gmail.com</p>
            <p><strong>Contact:</strong> 1234567890</p>
        </div>

        <!-- Registered Courses -->
        <div class="details-section">
            <h5>Registered Courses</h5>
            <table class="table table-bordered courses-table">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">Course Name</th>
                        <th scope="col">Instructor</th>
                        <th scope="col">Credits</th>
                        <th scope="col">Completion Status</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Mathematics</td>
                        <td>Dr. Smith</td>
                        <td>4</td>
                        <td>85% Completed</td>
                    </tr>
                    <tr>
                        <td>Science</td>
                        <td>Prof. Johnson</td>
                        <td>3</td>
                        <td>90% Completed</td>
                    </tr>
                    <tr>
                        <td>History</td>
                        <td>Dr. Brown</td>
                        <td>3</td>
                        <td>70% Completed</td>
                    </tr>
                </tbody>
            </table>
        </div>

        <!-- Academic Information -->
        <div class="details-section">
            <h5>Academic Performance</h5>
            <p><strong>CGPA:</strong> 8.5</p>
            <p><strong>Backlogs:</strong> 0</p>
            <p><strong>Scholarship:</strong> Eligible</p>
        </div>

        <!-- Additional Information -->
        <div class="details-section">
            <h5>Other Information</h5>
            <p><strong>Year:</strong> 3rd Year</p>
            <p><strong>Department:</strong> Computer Science</p>
            <p><strong>Program:</strong> Bachelor of Technology</p>
        </div>
    </div>
</body>
</html>
