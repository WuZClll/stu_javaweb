<%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/9/20
  Time: 20:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注销用户</title>
</head>
<body>
<%
  session.invalidate();
  response.setHeader("refresh", "2;URL=bottom.jsp");
%>
<h3>您已成功退出本网站，两秒钟后自动跳转至登陆页面</h3>
</body>
</html>
