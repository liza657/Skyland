<%--
  Created by IntelliJ IDEA.
  User: eliza
  Date: 27.08.2022
  Time: 20:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login | By Code Info</title>
    <link href="${pageContext.request.contextPath}/resources/css/style-login.css" rel="stylesheet">
    <link
            href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap"
            rel="stylesheet"
    />
</head>
<body>
<a href="/skyland/home" class="title"><h1 class="logo"> SkyLand</h1></a>
<div class="login-box">
    <h1>Sign in</h1>
    <form action="/login " method="post">
            <input type="email" class="form-control" id="email" placeholder="Email"/>
            <input type="password" placeholder="Password"  id="password" name="password">

        <button type="submit" class="btn">Sign in</button>
    </form>
    <p class="para-3">
        Not have an account? <a href="/registration">Sign Up Here</a>
    </p>
</div>

</body>
</html>