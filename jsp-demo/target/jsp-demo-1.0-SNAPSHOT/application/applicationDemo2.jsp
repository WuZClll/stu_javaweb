<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/9/21
  Time: 10:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    //设置application属性，此属性在整个服务器范围起作用
    application.setAttribute("name", "刘德华");
    application.setAttribute("birthday", new Date());
    //设置request属性，此属性在服务器跳转中起作用
    request.setAttribute("address","weihai");
    request.setAttribute("counter", 20);
    request.getRequestDispatcher("applicationDemo3.jsp").forward(request, response);
%>

</body>
</html>
