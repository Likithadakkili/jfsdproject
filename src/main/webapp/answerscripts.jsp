<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Answer Scripts</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        .container {
            margin: 20px auto;
            max-width: 900px;
        }
        .pdf-container {
            border: 1px solid #ddd;
            border-radius: 5px;
            overflow: hidden;
            margin-bottom: 20px;
        }
        iframe {
            width: 100%;
            height: 500px;
            border: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 class="text-center">Answer Scripts</h2>
        <p class="text-center text-muted">View your answer scripts below. Downloading is restricted.</p>

        <!-- Answer Script 1 -->
        <div class="pdf-container">
            <h5 class="text-center">Mathematics Answer Script</h5>
            <iframe src="scripts/Math_Answer_Booklet.pdf#toolbar=0&navpanes=0&scrollbar=0"></iframe>
        </div>

        <!-- Answer Script 2 -->
        <div class="pdf-container">
            <h5 class="text-center">Science Answer Script</h5>
            <iframe src="scripts/Science_Answer_Booklet.pdf#toolbar=0&navpanes=0&scrollbar=0"></iframe>
        </div>

        <!-- Answer Script 3 -->
        <div class="pdf-container">
            <h5 class="text-center">English Answer Script</h5>
            <iframe src="scripts/English_Answer_Booklet.pdf#toolbar=0&navpanes=0&scrollbar=0"></iframe>
        </div>
    </div>
</body>
</html>
