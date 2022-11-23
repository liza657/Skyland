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
    <link href="https://fonts.googleapis.com/css?family=Montserrat:100" rel="stylesheet">

</head>
<body>
<a href="/skyland/home" class="title"><h1 class="logo"> SkyLand</h1></a>
<div class="login-box">
    <form method="POST" action="${contextPath}/login" class="form-signin">
        <h2 class="form-heading">Sign in</h2>

        <div class="form-group ${error != null ? 'has-error' : ''}">
            <span>${message}</span>
            <input name="username" type="text" class="form-control" placeholder="Username"
                   autofocus="true"/>
            <input name="password" type="password" class="form-control" placeholder="Password"/>
            <span>${error}</span>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

            <button type="submit" class="btn">Sign in</button>
                <p class="para-3">
                    Not have an account? <a href="/skyland/registration">Sign Up Here</a>
                </p>
        </div>
    </form>
</div>
<%--<div class="login-box">--%>
<%--    <h1>Sign in</h1>--%>
<%--    <form action="/login " method="post">--%>
<%--            <input type="email" class="form-control" id="email" placeholder="Email"/>--%>
<%--            <input type="password" placeholder="Password"  id="password" name="password">--%>

<%--        <button type="submit" class="btn">Sign in</button>--%>
<%--    </form>--%>
<%--    <p class="para-3">--%>
<%--        Not have an account? <a href="/skyland/registration">Sign Up Here</a>--%>
<%--    </p>--%>
<%--</div>--%>

</body>
</html>