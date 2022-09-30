<%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/8/31
  Time: 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户访问</title>
</head>
<body>
<%!
    int count = 0;
    synchronized void setCount() {
        count++;
    }
%>
<%
    setCount();
    out.println("<h2>您是第" + count + "个登陆的网站</h2>");
%>
</body>
</html>
