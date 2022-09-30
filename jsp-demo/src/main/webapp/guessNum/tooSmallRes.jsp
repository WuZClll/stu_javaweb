<%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/9/24
  Time: 13:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>猜测数字过小</title>
</head>
<style>
    html {
        background-color: #6db2cc;
    }
</style>
<body>
<%
    String num = (String)request.getParameter("guessNum");
%>
<%=num%>您猜小了，请再猜
<form action="numResult.jsp" method="post">
    <input type="text" name="guessNum">
    <input type="submit" value="提交" name="submit">
</form>

</body>
</html>
