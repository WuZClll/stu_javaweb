<%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/9/24
  Time: 13:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>猜中了</title>
</head>
<style>
    html {
        background-color: #39e30b;
    }
</style>
<body>
<%
    Object num = session.getAttribute("num");
    Object count = session.getAttribute("count");/
%>
恭喜猜对了
共猜了<%=count%>次
这个数字是<%=num%>
再来猜一次？ <a href="startGueNum.jsp">好</a>

</body>
</html>
