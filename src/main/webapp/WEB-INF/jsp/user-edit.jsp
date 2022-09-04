<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>

<h1 style="text-align: center">User editing${user.email}</h1>
<hr>
<form action="/admin/user/edit/${user.id}" method="post">

    <select name="role">
        <option value="${user.roles}" selected>ROLE_ADMIN</option>
        <option value="${user.roles}">ROLE_USER</option>
    </select>
    <input  value="${user.id}" name="id">
    <input type="hidden" value="${_csrf.token}" name="_csrf">
    <button type="submit" class="btn btn-dark">Save</button>
</form>

</body>
</html>
