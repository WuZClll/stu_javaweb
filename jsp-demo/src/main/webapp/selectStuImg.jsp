<%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/8/31
  Time: 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>显示图片</title>
</head>
<body>
<%
    int number = 7 + (int) (Math.random() * 13);
    if (number >= 7 && number <= 13) {
%>
<%=number%>
<h1>
    显示小学生图片
</h1>
<image src="小学生.jpg">小学生</image>
<%
} else {
%>
<%=number%>
<h1>
    显示中学生图片
</h1>
    <image src="中学生.jpg">中学生</image>
<%
    }
%>
</body>
</html>
