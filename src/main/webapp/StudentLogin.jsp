<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <style>
        /* Styling (unchanged) */
        :root {
            --primary-color: #4A90E2;       
            --secondary-color: #34495E;      
            --accent-color: #5DADE2;         
            --background-start: #EBF5FB;     
            --background-end: #D4E6F1;       
            --text-primary: #2C3E50;         
            --text-secondary: #7F8C8D;       
        }

        body {
            background: linear-gradient(135deg, var(--background-start) 0%, var(--background-end) 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        
        .login-container {
            background: white;
            padding: 2.5rem;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            max-width: 420px;
            width: 90%;
        }

        .logo-container {
            text-align: center;
            margin-bottom: 2rem;
        }

        .logo {
            width: 90px;
            height: 90px;
            background: linear-gradient(145deg, var(--primary-color), var(--accent-color));
            border-radius: 50%;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 1.5rem;
            box-shadow: 0 5px 15px rgba(74, 144, 226, 0.3);
        }

        .logo i {
            font-size: 45px;
            color: white;
        }

        .form-title {
            color: var(--secondary-color);
            font-weight: 700;
            font-size: 2rem;
            margin-bottom: 1.5rem;
        }

        .form-group label {
            font-weight: 600;
            color: var(--text-primary);
            margin-bottom: 0.5rem;
        }

        .input-group-text {
            background: white;
            border: 2px solid #E8EEF2;
            border-right: none;
            color: var(--primary-color);
        }

        .form-control {
            border: 2px solid #E8EEF2;
            padding: 0.75rem;
            font-size: 1rem;
            transition: all 0.3s;
            color: var(--text-primary);
        }

        .form-control:focus {
            border-color: var(--primary-color);
            box-shadow: 0 0 0 0.2rem rgba(74, 144, 226, 0.25);
        }

        .btn-login {
            padding: 0.75rem;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            background: linear-gradient(145deg, var(--primary-color), var(--accent-color));
            border: none;
            transition: all 0.3s;
            margin-top: 1rem;
        }

        .btn-login:hover {
            background: linear-gradient(145deg, var(--accent-color), var(--primary-color));
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(74, 144, 226, 0.4);
        }

        .footer-text {
            text-align: center;
            margin-top: 2rem;
            color: var(--text-secondary);
            font-size: 0.9rem;
        }

        .input-group-text {
            min-width: 46px;
            justify-content: center;
        }

        .form-control:focus + .input-group-text,
        .input-group-text:hover {
            color: var(--accent-color);
        }

        @media (max-width: 480px) {
            .login-container {
                padding: 1.5rem;
            }
            
            .logo {
                width: 70px;
                height: 70px;
            }
            
            .logo i {
                font-size: 35px;
            }
            
            .form-title {
                font-size: 1.75rem;
            }
        }
    </style>
</head>
<body>
    <div class="login-container">
        <div class="logo-container">
            <div class="logo">
                <i class="fas fa-user-graduate"></i>
            </div>
            <h2 class="form-title">Student Login</h2>
        </div>
        
        <!-- Updated form -->
        <form action="seestudent.jsp" method="post">
            <div class="form-group">
                <label for="StudentId">Student ID</label>
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text">
                            <i class="fas fa-id-card"></i>
                        </span>
                    </div>
                    <input type="text" class="form-control" id="StudentId" name="StudentId" 
                           placeholder="Enter your student ID" required>
                </div>
            </div>
            
            <div class="form-group">
                <label for="StudentName">Student Name</label>
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text">
                            <i class="fas fa-user"></i>
                        </span>
                    </div>
                    <input type="text" class="form-control" id="StudentName" name="StudentName" 
                           placeholder="Enter your full name" required>
                </div>
            </div>
            
            <button type="submit" class="btn btn-primary btn-block btn-login">
                <i class="fas fa-sign-in-alt mr-2"></i> Login
            </button>
        </form>
        
        <div class="footer-text">
            <p>© 2024 Student Portal. All rights reserved.</p>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.4.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
