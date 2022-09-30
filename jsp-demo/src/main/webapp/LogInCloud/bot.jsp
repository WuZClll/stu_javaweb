<%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/9/16
  Time: 18:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--<%
    Cookie[] cookies = request.getCookies();
    for (Cookie cookie : cookies) {
        if (cookie.getName().equals("name")) {
            String value = cookie.getValue();

%>
<h2>欢迎<%=value%>光临本站</h2>
<%
        }
    }
%>--%>
<%
    Object username = session.getAttribute("username");
%>
欢迎<%=username%>光临本站
<a href="index.jsp">主页</a>
<a href="logout.jsp">注销用户</a>
</body>
</html>
