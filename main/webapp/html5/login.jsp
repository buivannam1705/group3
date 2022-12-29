<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 26/12/2022
  Time: 2:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="/Css/login.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body style="background: #000000 ">
<h2></h2>
<div class="container" id="container">
    <div class="form-container sign-in-container">
        <form action="/checkLogin" method="post">
            <h1>Sign in</h1>
            <div class="social-container">
                <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
                <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
                <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
            </div>
            <span>or use your account</span>
            <input type="email" placeholder="Email" name="name" id="name">
            <input type="password" placeholder="Password" name="password" id="password" >
            <a href="register">Register</a>
            <button type="submit">Login</button>
        </form>
    </div>
    <div class="overlay-container" style="background: url('https://images8.alphacoders.com/685/685679.jpg') bottom center /cover no-repeat; ">

    </div>
</div>

<footer>
    <p>
        Created with <i class="fa fa-heart"></i> by
        <a target="_blank" href="https://florin-pop.com">Florin Pop</a>
        - Read how I created this and how you can join the challenge
        <a target="_blank" href="https://www.florin-pop.com/blog/2019/03/double-slider-sign-in-up-form/">here</a>.
    </p>
</footer>
</body>
</html>
