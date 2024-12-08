<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Evaluation</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            background-image: url("https://www.corelearn.com/wp-content/uploads/2017/08/iStock-467142812.jpg"); /* Path to your image */
            background-size: cover; /* Ensures the image covers the entire page */
            background-repeat: no-repeat; /* Prevents the image from repeating */
        }

        .header {
            width: 100%;
            background-color: #006B5E;
            padding: 15px 0;
        }

        .container1 {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            display: flex;
            justify-content: flex-end;
            align-items: center;
        }

        .nav-buttons {
            display: flex;
            gap: 20px;
            margin-right: 30px;
        }

        .nav-buttons a {
            color: white;
            text-decoration: none;
            padding: 8px 15px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
            font-weight: 500;
        }

        .nav-buttons a:hover {
            background-color: rgba(255, 255, 255, 0.1);
        }

        .nav-buttons a i {
            margin-right: 5px;
        }

        #welcome {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            color: white;
            font-size: 2.5em;
            text-align: center;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
            background-color: rgba(0, 107, 94, 0.8);
            padding: 20px 40px;
            border-radius: 10px;
            white-space: nowrap;
        }

        @media (max-width: 768px) {
            .nav-buttons {
                flex-direction: column;
                gap: 10px;
            }
            
            #welcome {
                font-size: 1.8em;
                padding: 15px 30px;
            }
        }
    </style>
</head>
<body>
    <div class="header">
        <div class="container1">
            <nav class="nav-buttons">
                <a href=""><i class="bi bi-house-door"></i>Home</a>
                <a href="stud.jsp"><i class="bi bi-plus-circle"></i>Add Marks</a>
                <a href="/studentView"><i class="bi bi-eye"></i>View</a>
                <a href="update.jsp"><i class="bi bi-pencil"></i>Update</a>
                <a href="Delete.jsp"><i class="bi bi-trash"></i>Delete</a>
                <a href="index.jsp"><i class="bi bi-box-arrow-right">Logout</i></a>
            </nav>
        </div>
    </div>
    <p id="welcome">Welcome to Student Evaluation System</p>
</body>
</html>
