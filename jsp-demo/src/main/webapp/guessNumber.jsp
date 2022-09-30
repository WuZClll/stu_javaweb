<%@ page import="java.util.Scanner" %><%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/9/1
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>猜数字游戏</title>
</head>
<body>
<%
    int num = (int)(Math.random()*20)+1;
%>
<form action="numResult.jsp" method="post">
    <input style="display: none" type="text" name="num" value="<%=num%>">
    随机分给了你一个数（1-20）：<input type="text" name="guessNum"><br>
    <input type="submit" value="查看结果" name="submit">
</form>


</body>
</html>
