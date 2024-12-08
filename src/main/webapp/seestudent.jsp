<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        header {
            background: #007bff;
            color: white;
            padding: 20px 0;
            text-align: center;
        }
        section {
            padding: 50px 20px;
        }
        .section-title {
            font-size: 28px;
            margin-bottom: 20px;
            color: #333;
            text-align: center;
        }
        .scrolling-content {
            max-height: 70vh;
            overflow-y: auto;
        }
        footer {
            background: #333;
            color: white;
            text-align: center;
            padding: 10px 0;
        }
    </style>
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">Student Portal</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="aboutstudents.jsp">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="exams.jsp">Exams</a>
                </li>
                <li class="nav-item">
    <a class="nav-link" href="materials.jsp">Materials</a>
</li>
                <li class="nav-item">
                    <a class="nav-link" href="additionaldetails.jsp">Additional Details</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#feedback">Feedback</a>
                </li>
                <li class="nav-item">
    <a class="nav-link" href="studentmarks.jsp">View Marks</a>
</li>
              <li class="nav-item">
    <a class="nav-link" href="answerscripts.jsp">Answer Scripts</a>
</li>
                <li class="nav-item">
    <a class="nav-link" href="courseanalytics.jsp">Course analysis</a>
</li>
               <li class="nav-item">
    <a class="nav-link" href="index.jsp">Logout</a>
</li>
            </ul>
        </div>
    </nav>

    <!-- Header Section -->
    <header>
        <h1>Welcome to the Student Portal</h1>
        <p>Your gateway to managing student and exam details efficiently!</p>
    </header>

    <!-- About Students Section -->
    <section id="about" class="bg-light">
        <div class="container scrolling-content">
            <div class="section-title">Engaging Students</div>
            <div class="row">
                <div class="col-md-6">
                    <img src=img/st1.jpg alt="Students" class="img-fluid rounded">
                </div>
                <div class="col-md-6">
                    <p>
                        Our platform provides a centralized system for students to manage their academic profiles, 
                        access their courses, and stay updated with the latest announcements. Explore features like 
                        real-time exam updates, personalized learning recommendations, and more.
                    </p>
                </div>
            </div>
        </div>
    </section>

    <!-- Exam Details Section -->
    <section id="exams">
        <div class="container scrolling-content">
            <div class="section-title">Detailed exam Structure</div>
            <div class="row">
                <div class="col-md-6">
                    <p>
                        Stay informed about upcoming exams, results, and schedules. Our platform provides seamless 
                        integration with exam management systems to ensure you never miss a deadline. 
                    </p>
                </div>
                <div class="col-md-6">
                    <img src="img/ex2.jpg" alt="Exams" class="img-fluid rounded">
                </div>
            </div>
        </div>
    </section>

    <!-- Additional Details Section -->
    <section id="additional" class="bg-light">
        <div class="container scrolling-content">
            <div class="section-title">Additional Information for students regarding courses</div>
            <div class="row">
                <div class="col-md-6">
                    <img src=img/inf1.jpg alt="Students" class="img-fluid rounded">
                </div>
                <div class="col-md-6">
                    <p>
                        Our portal also includes access to study materials, the ability to collaborate with peers and professors, 
                and a detailed record of your academic performance. With an intuitive design and powerful tools, 
                it's the ultimate companion for students.
                    </p>
                </div>
            </div>
        </div>

    <!-- Feedback Section -->
<!-- Feedback Section -->

<section id="feedback">

    <div class="container">

        <div class="section-title">Feedback</div>

        <p>If you want to give feedback to the staff, kindly press the button below:</p>

        <button class="btn btn-primary" onclick="redirectToFeedbackPage()">Give Feedback</button>

    </div>

</section>



<script>

    function redirectToFeedbackPage() {

        window.location.href = "/feedback.jsp"; // Redirects to a feedback page

    }

</script>

    <!-- Footer -->
    <footer>
        <p>© 2024 Student Portal. All Rights Reserved.</p>
    </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.4.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
