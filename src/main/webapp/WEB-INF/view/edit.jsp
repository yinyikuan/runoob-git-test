<%--
  Created by IntelliJ IDEA.
  User: 尹贻宽
  Date: 2019/11/13
  Time: 19:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form method="post" action="doedit">
    <input type="hidden" value="${user.id}" name="id">
    <input type="text" name="userCode" value="${user.userCode}">
    <input type="text" name="userName" value="${user.userName}">
    <input type="text" name="userPassword" value="${user.userPassword}">
    <input type="radio" value="1" name="gender" <c:if test="${user.gender=='1'}">checked="checked"</c:if>>男
    <input type="radio" value="1" name="gender" <c:if test="${user.gender=='2'}">checked="checked"</c:if>>女
    <input type="date" name="birthday" value="<f:formatDate value="${user.birthday}" pattern="yyyy-MM-dd"/>">
    <input type="submit" value="提交">

</form>
</body>
</html>
