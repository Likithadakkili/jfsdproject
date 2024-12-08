<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Study Materials</title>
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
        .materials-container {
            margin: 30px auto;
            width: 80%;
            background-color: #f8f9fa;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .materials-header {
            font-size: 24px;
            font-weight: bold;
            text-align: center;
            margin-bottom: 20px;
        }
        .materials-list {
            margin-top: 20px;
        }
        .materials-list ul {
            list-style: none;
            padding: 0;
        }
        .materials-list li {
            margin-bottom: 10px;
        }
        .materials-list a {
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
        }
        .materials-list a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container1">
        <h2 class="head-title">Study Materials</h2>
        <div class="head-menu">
            <a href="seestudent.jsp"><i class="bi bi-house-door"></i> Home</a>
            <a href="index.jsp"><i class="bi bi-box-arrow-right"></i> Logout</a>
        </div>
    </div>

    <div class="materials-container">
        <div class="materials-header">Available Study Materials</div>
        <div class="materials-list">
            <ul>
                <li><a href="materials/Math_Notes.pdf" download>Math Notes</a> - Comprehensive notes on calculus and algebra.</li>
                <li><a href="materials/Science_Experiments.pdf" download>Science Experiments</a> - Detailed experimental methods and procedures.</li>
                <li><a href="materials/History_Timeline.pdf" download>History Timeline</a> - Key historical events and their significance.</li>
                <li><a href="materials/English_Grammar.pdf" download>English Grammar</a> - A guide to mastering grammar rules.</li>
                <li><a href="materials/Programming_Tutorial.pdf" download>Programming Tutorial</a> - Learn coding with examples and exercises.</li>
            </ul>
        </div>
    </div>
</body>
</html>
