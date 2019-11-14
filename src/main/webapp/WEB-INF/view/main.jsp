<%--
  Created by IntelliJ IDEA.
  User: 尹贻宽
  Date: 2019/11/13
  Time: 19:31
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

<table>
    <th>
    <th>1</th>
    <th>2</th>
    <th>3</th>
    <th>4</th>
    <th>5</th>
    <th>6</th>
    </th>
    <c:forEach var="user" items="${userlist}">
        <tr id="${user.id}">
        <th>
        <th>${user.userCode}</th>
        <th>${user.userName}</th>
        <th>${user.userPassword}</th>
        <th><c:if test="${user.gender=='1'}">男</c:if><c:if test="${user.gender=='2'}">女</c:if></th>
        <th><f:formatDate value="${user.birthday}" pattern="yyyy-MM-dd"/></th>
        <th><a href="update?id=${user.id}">修改</a> <a href="javascript:;" onclick="del(${user.id})">删除</a></th>
        </th>
        </tr>
    </c:forEach>
    <a href="add">添加</a>
</table>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/deleteUser.js"></script>
</body>
</html>
