<%--
  Created by IntelliJ IDEA.
  User: eliza
  Date: 27.08.2022
  Time: 20:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Sign Up | By Code Info</title>
    <link href="${pageContext.request.contextPath}/resources/css/style-login.css" rel="stylesheet">
    <link
            href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap"
            rel="stylesheet"
    />
</head>
<body>
<a href="index.html" class="title"><h1 class="logo" > SkyLand</h1> </a>

<div class="signup-box">
    <h1>Sign Up</h1>
    <h4> Already have an account?<a href="LoginPage.html"> Sign in</a></h4>
    <form>
        <input type="text" placeholder="First Name" />
        <input type="text" placeholder="Last Name" />
        <input type="email" placeholder="Email" />
        <input type="text" placeholder="Phone number" />
        <input type="password" placeholder="Password" />
        <input type="password" placeholder="Confirm Password" />
        <input type="button" value="Submit" />
    </form>
    <p>
        By clicking the Sign Up button,you agree to our <br />
        <a href="#">Terms and Condition</a> and <a href="#">Policy Privacy</a>
    </p>
</div>

</body>
</html>
