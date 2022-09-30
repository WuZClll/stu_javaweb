<%@ page import="java.math.BigInteger" %><%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/9/24
  Time: 12:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>猜数字</title>
</head>
<style>
    html {
        background-color: #2ea972;
    }
</style>
<body>
<%
    int num = (int) (Math.random() * 20) + 1;
    session.setAttribute("num", num);
    int count = 0;
    session.setAttribute("count", count);
%>
<form action="numResult.jsp" method="post">
    随机分给了你一个数（1-20）请猜！<br/>
    <input type="text" name="guessNum">
    <input type="submit" value="提交" name="submit">
</form>

</body>
</html>
