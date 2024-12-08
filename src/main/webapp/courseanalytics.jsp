<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Course Analytics</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
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
        .chart-container {
            margin: 20px auto;
            padding: 20px;
            background-color: #f8f9fa;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 80%;
            text-align: center;
        }
        .chart-title {
            text-align: center;
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 20px;
        }
        canvas {
            max-width: 400px;
            max-height: 300px;
            margin: auto;
        }
    </style>
</head>
<body>
    <div class="container1">
        <h2 class="head-title">Course Analytics Dashboard</h2>
        <div class="head-menu">
            <a href="seestudent.jsp"><i class="bi bi-house-door"></i> Home</a>
            <a href="index.jsp"><i class="bi bi-box-arrow-right"></i> Logout</a>
        </div>
    </div>

    <!-- Chart Containers -->
    <div class="chart-container">
        <div class="chart-title">Math - Completion Analysis</div>
        <canvas id="mathBarChart"></canvas>
        <canvas id="mathDoughnutChart"></canvas>
    </div>

    <div class="chart-container">
        <div class="chart-title">Science - Completion Analysis</div>
        <canvas id="scienceBarChart"></canvas>
        <canvas id="scienceDoughnutChart"></canvas>
    </div>

    <div class="chart-container">
        <div class="chart-title">History - Completion Analysis</div>
        <canvas id="historyBarChart"></canvas>
        <canvas id="historyDoughnutChart"></canvas>
    </div>

    <div class="chart-container">
        <div class="chart-title">English - Completion Analysis</div>
        <canvas id="englishBarChart"></canvas>
        <canvas id="englishDoughnutChart"></canvas>
    </div>

    <script>
        // Data for each course
        const courseData = {
            Math: { completed: 70, notCompleted: 30 },
            Science: { completed: 60, notCompleted: 40 },
            History: { completed: 50, notCompleted: 50 },
            English: { completed: 80, notCompleted: 20 },
        };

        // Function to initialize bar and doughnut charts
        function createCharts(courseName, barChartId, doughnutChartId) {
            const data = courseData[courseName];

            // Bar Chart
            const barChart = new Chart(document.getElementById(barChartId), {
                type: 'bar',
                data: {
                    labels: ['Completed', 'Not Completed'],
                    datasets: [{
                        label: `${courseName} Completion Status`,
                        data: [data.completed, data.notCompleted],
                        backgroundColor: ['#28a745', '#dc3545'],
                        borderColor: ['#28a745', '#dc3545'],
                        borderWidth: 1,
                    }],
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                    scales: {
                        y: {
                            beginAtZero: true,
                        },
                    },
                },
            });

            // Doughnut Chart
            const doughnutChart = new Chart(document.getElementById(doughnutChartId), {
                type: 'doughnut',
                data: {
                    labels: ['Completed', 'Not Completed'],
                    datasets: [{
                        data: [data.completed, data.notCompleted],
                        backgroundColor: ['#28a745', '#dc3545'],
                        borderWidth: 1,
                    }],
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                },
            });
        }

        // Initialize charts for each course
        createCharts('Math', 'mathBarChart', 'mathDoughnutChart');
        createCharts('Science', 'scienceBarChart', 'scienceDoughnutChart');
        createCharts('History', 'historyBarChart', 'historyDoughnutChart');
        createCharts('English', 'englishBarChart', 'englishDoughnutChart');
    </script>
</body>
</html>
