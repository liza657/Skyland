<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: eliza
  Date: 30.08.2022
  Time: 19:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1 style="text-align: center">Admin panel</h1><hr>
<table class="table table-hover table-dark">
    <tr>
        <th>First name</th>
        <th>Last name</th>
        <th>Email</th>
        <th>Phone number</th>
        <th>Activity</th>
        <th>Roles</th>
        <th>Ban</th>*
        <th>Editing</th>
        <th>Detail information</th>
    </tr>
<c:forEach items="${users}" var="user">
    <tr>
        <th>${user.firstName}</th>
        <th>${user.lastName}</th>
        <th>${user.email}</th>
        <th>${user.phoneNumber}</th>
        <th>
            <c:choose>
                <c:when test="${user.active}">
                    true
                    <br />
                </c:when>
                <c:otherwise>
                    false
                    <br />
                </c:otherwise>
            </c:choose>
        </th>
        <th>
<%--    <c:forEach items="${roles}" var="user">--%>
<%--            <#list user.roles as role>${role}</#list>--%>
    <c:choose>
        <c:when test="${user.admin}">
            admin
        </c:when>
        <c:otherwise>
            user
        </c:otherwise>
    </c:choose>
        </th>
        <th>
            <form action="/admin/user/ban/${user.id}" method="post">
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <input type="submit" class="btn btn-light" value="Ban">
            </form>
        </th>
        <th><a href="/admin/user/edit/${user.id}">Editing</a></th>
        <th><a href="/user/${user.id}">Detail information</a></th>
    </tr>
    <#else>
    <h3>No users</h3>
</#list>
</c:forEach>
</table>
</body>
</html>
