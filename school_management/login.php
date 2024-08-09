<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <style>
        /* Reset some default styles */
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #8e2de2, #4a00e0);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            overflow: hidden;
        
        }

        .container {
            background: #ffffff;
            border: 1px solid #ddd;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
            padding: 30px;
            width: 100%;
            max-width: 450px;
            text-align: center;
            box-sizing: border-box;
        }

        .container h2 {
            margin-bottom: 20px;
            color: #333;
            font-size: 26px;
            font-weight: bold;
            background: -webkit-linear-gradient(#00c6ff, #0072ff);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1);
        }

        .container label {
            display: block;
            margin: 10px 0 5px;
            text-align: left;
            color: #555;
        }

        .container input {
            width: 100%;
            padding: 12px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 6px;
            box-sizing: border-box;
            font-size: 16px;
            transition: border-color 0.3s, box-shadow 0.3s;
        }

        .container input:focus {
            border-color: #007bff;
            outline: none;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        }

        .button-container {
            display: flex;
            justify-content: space-between;
            gap: 10px;
        }

        .button-container input[type="submit"] {
            width: 48%;
            border: none;
            padding: 12px;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s, transform 0.3s;
        }

        .button-container input[type="submit"]:hover {
            transform: translateY(-2px);
        }

        .button-container input[type="submit"].login-submit {
            background-color: #4CAF50;
            color: white;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .button-container input[type="submit"].login-submit:hover {
            background-color: #45a049;
        }

        .button-container input[type="submit"].register-btn {
            background-color: #2196F3;
            color: white;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .button-container input[type="submit"].register-btn:hover {
            background-color: #0b79d0;
        }

        .error-message {
            color: red;
            font-size: 14px;
            margin-top: 10px;
        }
    </style>
</head>
<body>
   
    <div class="container">
        <h2>School Management System Login</h2>
        <form action="#" method="post">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" class="login-username" required>
            
            <label for="password">Password</label>
            <input type="password" id="password" name="password" class="login-password" required>
            
            <div class="button-container">
                <input type="submit" value="Login" class="login-submit" onclick="window.location.href='welcome.php'; return false;">
                <input type="submit" value="Register" class="register-btn" onclick="window.location.href='register.php'; return false;">
            </div>
            
            <p class="error-message" style="display: none;">Invalid username or password</p> <!-- Error message hidden by default -->
        </form>
    </div>
</body>
</html>

