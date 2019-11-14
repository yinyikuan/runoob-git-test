<%--
  Created by IntelliJ IDEA.
  User: 尹贻宽
  Date: 2019/11/14
  Time: 19:43
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
   <c:forEach items="${userlist}" var="user">
       <tr id="${user.id}">
           <td>${user.userCode}</td>
           <td>${user.userName}</td>
           <td>${user.userPassword}</td>
           <td><c:if test="${user.gender=='1'}">男</c:if><c:if test="${user.gender=='2'}">女</c:if></td>
           <td><f:formatDate value="${user.birthday}" pattern="yyyy-MM-dd"/></td>
           <td><a href="update?id=${user.id}">修改</a><a href="javascript:;" onclick="del(${user.id})">删除</a></td>

       </tr>
   </c:forEach>
    <a href="add">添加</a>
</table>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/deleteUser.js"></script>
</body>
</html>
