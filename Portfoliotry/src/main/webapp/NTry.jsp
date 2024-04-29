<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login Page</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      overflow: hidden;
    }

    .background {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      z-index: -1;
      background-color: #000;
    }

    .star {
      position: absolute;
      background-color: #fff;
      border-radius: 50%;
      animation: twinkle 1s infinite alternate;
    }

    @keyframes twinkle {
      0% {
        transform: scale(1);
        opacity: 0;
      }
      100% {
        transform: scale(2);
        opacity: 1;
      }
    }

    .login-container {
      width: 400px;
      padding: 40px;
      background-color: #fff;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      text-align: center;
    }

    .login-container h2 {
      margin-bottom: 30px;
    }

    input[type="text"],
    input[type="password"] {
      width: 100%;
      padding: 10px;
      margin-bottom: 20px;
      border: 1px solid #ccc;
      border-radius: 5px;
      box-sizing: border-box;
    }

    input[type="submit"] {
      width: 100%;
      padding: 10px;
      background-color: #007bff;
      color: #fff;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    input[type="submit"]:hover {
      background-color: #0056b3;
    }
  </style>
</head>
<body>
  <div class="background">
    <!-- Generate stars dynamically using JavaScript -->
  </div>
  <div class="login-container">
    <h2>Login</h2>
    <input type="text" placeholder="Username">
    <input type="password" placeholder="Password">
    <input type="submit" value="Login">
  </div>
  <script>
    // Dynamically generate stars
    const background = document.querySelector('.background');
    const numStars = 50;

    for (let i = 0; i < numStars; i++) {
      const star = document.createElement('div');
      star.classList.add('star');
      star.style.top = `${Math.random() * 100}%`;
      star.style.left = `${Math.random() * 100}%`;
      star.style.width = `${Math.random() * 2 + 1}px`;
      star.style.height = `${Math.random() * 2 + 1}px`;
      star.style.animationDuration = `${Math.random() * 1 + 0.5}s`;
      background.appendChild(star);
    }
  </script>
</body>
</html>
