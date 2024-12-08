<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Additional Details</title>
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
        .events-table, .activities-table {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container1">
        <h2 class="head-title">Additional Details</h2>
        <div class="head-menu">
            <a href="seestudent.jsp"><i class="bi bi-house-door"></i> Home</a>
            <a href="index.jsp"><i class="bi bi-box-arrow-right"></i> Logout</a>
        </div>
    </div>

    <div class="details-container">
        <div class="details-header">Extracurricular Activities & Event Participation</div>

        <!-- Extracurricular Activities -->
        <div class="details-section">
            <h5>Extracurricular Activities</h5>
            <table class="table table-bordered activities-table">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">Activity Name</th>
                        <th scope="col">Role</th>
                        <th scope="col">Achievements</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Debate Club</td>
                        <td>Member</td>
                        <td>1st Prize in Inter-College Debate</td>
                    </tr>
                    <tr>
                        <td>Drama Society</td>
                        <td>Actor</td>
                        <td>Best Actor Award in Annual Play</td>
                    </tr>
                </tbody>
            </table>
        </div>

        <!-- Event Participation -->
        <div class="details-section">
            <h5>Events Participated</h5>
            <table class="table table-bordered events-table">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">Event Name</th>
                        <th scope="col">Date</th>
                        <th scope="col">Achievement</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Hackathon 2023</td>
                        <td>15th Jan 2023</td>
                        <td>Winner</td>
                    </tr>
                    <tr>
                        <td>Web Development Workshop</td>
                        <td>10th Feb 2023</td>
                        <td>Certificate of Excellence</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
