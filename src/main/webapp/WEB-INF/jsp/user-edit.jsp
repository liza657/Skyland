<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>

<h1 style="text-align: center">User editing ${user.email}</h1>
<hr>
<form action="/admin/user/edit"  method="post">
<%--    <select name='role'>--%>
<%--        <option value="${selected}" selected>${selected}</option>--%>
<%--        <c:forEach items="${roles}" var="role">--%>
<%--            <c:if test="${role != selected}">--%>
<%--                <option value="${role}">${role}</option>--%>
<%--            </c:if>--%>
<%--        </c:forEach>--%>
<%--    </select>--%>
    <form:checkboxes path="user.roles" items="${roles}"/>
    <input  value="${user.id}" name="userId">
    <input type="hidden" value="${_csrf.token}" name="_csrf">
    <button type="submit" class="btn btn-dark">Save</button>
</form>

</body>
</html>
