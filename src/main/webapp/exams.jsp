<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exam Schedule</title>
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
        .schedule-table {
            margin: 30px auto;
            width: 80%;
            background-color: #f8f9fa;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .schedule-title {
            text-align: center;
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="container1">
        <h2 class="head-title">Exam Schedule</h2>
        <div class="head-menu">
            <a href="seestudent.jsp"><i class="bi bi-house-door"></i> Home</a>
            <a href="index.jsp"><i class="bi bi-box-arrow-right"></i> Logout</a>
        </div>
    </div>

    <!-- Exam Schedule -->
    <div class="schedule-table">
        <div class="schedule-title">Upcoming Exams</div>
        <table class="table table-bordered table-hover">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">Course</th>
                    <th scope="col">Date</th>
                    <th scope="col">Time</th>
                    <th scope="col">Venue</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Mathematics</td>
                    <td>2024-12-15</td>
                    <td>10:00 AM - 12:00 PM</td>
                    <td>Room 101</td>
                </tr>
                <tr>
                    <td>Science</td>
                    <td>2024-12-16</td>
                    <td>2:00 PM - 4:00 PM</td>
                    <td>Room 202</td>
                </tr>
                <tr>
                    <td>History</td>
                    <td>2024-12-17</td>
                    <td>9:00 AM - 11:00 AM</td>
                    <td>Room 303</td>
                </tr>
                <tr>
                    <td>English</td>
                    <td>2024-12-18</td>
                    <td>1:00 PM - 3:00 PM</td>
                    <td>Room 404</td>
                </tr>
            </tbody>
        </table>
    </div>
</body>
</html>
