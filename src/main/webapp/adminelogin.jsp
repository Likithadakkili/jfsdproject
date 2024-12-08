<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    <style>
        /* General styling */
        body {
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            flex-direction: column;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        /* Navbar styling */
        nav {
            background: linear-gradient(to right, #006B5E, #006B5E);
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

        /* Container styling */
        .container-wrapper {
            flex: 1;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
            margin-top: 70px;
        }

        .registration-container {
            background: rgba(255, 255, 255, 0.95);
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
            text-align: center;
        }

        /* Form elements */
        h1 {
            color: #006B5E;
            margin-bottom: 30px;
            font-weight: bold;
            font-size: 2rem;
        }

        label {
            margin: 12px 0 8px;
            display: block;
            font-weight: 500;
            color: #006B5E;
            text-align: left;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 12px;
            margin: 8px 0;
            border: 2px solid #e0e0e0;
            border-radius: 8px;
            box-sizing: border-box;
            font-size: 1rem;
        }

        input[type="text"]:focus, input[type="password"]:focus {
            border-color: #006B5E;
            outline: none;
            box-shadow: 0 0 0 3px rgba(0, 107, 94, 0.2);
        }

        input[type="submit"] {
            background: linear-gradient(45deg, #006B5E, #004d40);
            color: white;
            padding: 14px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            width: 100%;
            font-size: 1rem;
            font-weight: 500;
            margin-top: 20px;
            transition: all 0.3s ease;
        }

        input[type="submit"]:hover {
            transform: translateY(-2px);
            box-shadow: 0 0 20px rgba(0, 107, 94, 0.5);
        }

        /* Responsive design */
        @media (max-width: 600px) {
            nav h2 {
                font-size: 1.2rem;
            }

            .registration-container {
                padding: 20px;
                width: 90%;
            }
        }
    </style>
</head>
<body>
    <nav>
       <h2>Student Evaluation</h2>
        <a href="index.jsp">Logout</a>
    </nav>

    <div class="container-wrapper">
        <div class="registration-container">
            <h1>Login</h1>
            <form id="loginForm" action="/adminInfo" method="post">
                <label for="username">Username</label>
                <input type="text" id="username" name="Username" aria-label="Enter your username" required>
                
                <label for="password">Password</label>
                <input type="password" id="password" name="Password" aria-label="Enter your password" required>
                
                <input type="submit" value="Admin Login">
            </form>

        </div>
    </div>

    <script type="text/javascript">
        document.getElementById('loginForm').addEventListener('submit', function(event) {
            const username = document.getElementById('username').value.trim();
            const password = document.getElementById('password').value.trim();
            
            if (username && password) {
                // Assuming the login credentials are valid, redirect to the adminnavbar.jsp
                window.location.href = 'adminnavbar.jsp'; 
            } else {
                // Prevent form submission if credentials are not valid
                event.preventDefault();
                alert("Please fill in both username and password.");
            }
        });
    </script>
</body>
</html>
