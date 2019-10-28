<%--
  Created by IntelliJ IDEA.
  User: yangsijie
  Date: 2019/10/28
  Time: 2:37 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>list</title>
</head>
<body>
    <table width="80%" align="center">
        <tr>
            <td>编号</td>
            <td>姓名</td>
            <td>密码</td>
        </tr>
        <c:forEach items="${list}" var="bean">
            <tr>
                <td>${bean.id}</td>
                <td>${bean.name}</td>
                <td>${bean.pwd}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
