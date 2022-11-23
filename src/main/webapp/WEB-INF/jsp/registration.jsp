<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Sign Up | By Code Info</title>
    <link href="${pageContext.request.contextPath}/resources/css/style-login.css" rel="stylesheet">
    <link
            href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap"
            rel="stylesheet"
    />
    <link href="https://fonts.googleapis.com/css?family=Montserrat:100" rel="stylesheet">

</head>

<body>
<a href="/skyland/home" class="title"><h1 class="logo" > SkyLand</h1> </a>
<div class="signup-box">>
        <h1>Sign Up</h1>
        <h4> Already have an account?<a href="/skyland/login"> Sign in</a></h4>
    <form:form method="POST" modelAttribute="userForm" class="form-signin">
        <h2 class="form-signin-heading">Create your account</h2>
        <spring:bind path="firstName">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="firstName" class="form-control" placeholder="First name"
                            autofocus="true"></form:input>
                <form:errors path="firstName"></form:errors>
            </div>
        </spring:bind>
        <spring:bind path="lastName">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="lastName" class="form-control" placeholder="Last name"
                            autofocus="true"></form:input>
                <form:errors path="lastName"></form:errors>
            </div>
        </spring:bind>
        <spring:bind path="username">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="username" class="form-control" placeholder="Username"
                            autofocus="true"></form:input>
                <form:errors path="username"></form:errors>
            </div>
        </spring:bind>
        <spring:bind path="email">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="email" class="form-control" placeholder="Email"
                            autofocus="true"></form:input>
                <form:errors path="email"></form:errors>
            </div>
        </spring:bind>
        <spring:bind path="phoneNumber">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="phoneNumber" class="form-control" placeholder="Phone number"
                            autofocus="true"></form:input>
                <form:errors path="phoneNumber"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="password">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="password" path="password" class="form-control" placeholder="Password"></form:input>
                <form:errors path="password"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="passwordConfirm">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="password" path="passwordConfirm" class="form-control"
                            placeholder="Confirm your password"></form:input>
                <form:errors path="passwordConfirm"></form:errors>
            </div>
        </spring:bind>

                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <button type="submit" class="btn">Register</button>
    </form:form>
        <p>
            By clicking the Sign Up button,you agree to our <br />
            <a href="#">Terms and Condition</a> and <a href="#">Policy Privacy</a>
        </p>
</div>


</body>
</html>
<%--&lt;%&ndash;--%>
<%--  Created by IntelliJ IDEA.--%>
<%--  User: eliza--%>
<%--  Date: 27.08.2022--%>
<%--  Time: 20:28--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <title>Sign Up | By Code Info</title>--%>
<%--    <link href="${pageContext.request.contextPath}/resources/css/style-login.css" rel="stylesheet">--%>
<%--    <link--%>
<%--            href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap"--%>
<%--            rel="stylesheet"--%>
<%--    />--%>
<%--</head>--%>
<%--<body>--%>

<%--<a href="/skyland/home" class="title"><h1 class="logo" > SkyLand</h1> </a>--%>

<%--<div class="signup-box">--%>
<%--    <h1>Sign Up</h1>--%>
<%--    <h4> Already have an account?<a href="/skyland/login"> Sign in</a></h4>--%>
<%--    <form action="/registration" method="POST" modelAttribute="userForm">--%>
<%--        <input type="text" class="form-control" required id="firstName" name="firstName" placeholder="First Name" />--%>
<%--        <input type="text" class="form-control" required id="lastName" name="lastName" placeholder="Last Name" />--%>
<%--        <input type="text" class="form-control" required id="username" name="username" placeholder="User name" />--%>
<%--        <input type="email" class="form-control" id="email" required name="email" placeholder="Email" />--%>
<%--        <input type="text" class="form-control" id="phoneNumber" required name="phoneNumber" placeholder="Phone number" />--%>
<%--        <input type="password" class="form-control" id="password" required name="password" placeholder="Password" />--%>
<%--        <input type="password" class="form-control" id="passwordConfirm" required name="passwordConfirm" placeholder="Confirm password" />--%>
<%--        <input type="hidden" name="_csrf" value="${_csrf.token}">--%>
<%--        <button type="submit" class="btn">Register</button>--%>
<%--    </form>--%>
<%--    <p>--%>
<%--        By clicking the Sign Up button,you agree to our <br />--%>
<%--        <a href="#">Terms and Condition</a> and <a href="#">Policy Privacy</a>--%>
<%--    </p>--%>
<%--</div>--%>

<%--</body>--%>
<%--</html>--%>
