<%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/8/10
  Time: 10:29
  To change this template use File | Settings | File Templates.
--%>
<%--ServletDemo2--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><%--引入jstl--%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--
c:if:来完成逻辑判断，替换java if else
--%>
<%--
<c:if test="true">
    <h1>true</h1>
</c:if>
<c:if test="false">
    <h1>false</h1>
</c:if>
--%>
<c:if test="${status == 1}">
    启用
</c:if>
<c:if test="${status == 0}">
    禁用
</c:if>
</body>
</html>
