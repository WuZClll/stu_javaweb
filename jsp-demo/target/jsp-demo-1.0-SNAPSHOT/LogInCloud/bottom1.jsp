<%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/9/7
  Time: 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
</head>
<body>

<form action="../jdbclogin/dolog.jsp" method="post">
    <h1 align="center">用户登录</h1>
    <p align="center"> 用户名<input type="text" name="username"></p>
    <p align="center"> 密 码<input type="password" name="password"></p>
    <p align="center"><input type="submit" value="登录">
        <input type="reset" value="取消"></p></td>
</form>

</body>
</html>
