<%@ page import="com.util.MyTools" %><%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/10/5
  Time: 11:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>显示留言内容</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String title = MyTools.change(request.getParameter("title"));
    String content = MyTools.change(request.getParameter("content"));
%>
标题 <%=title%>
内容 <%=content%>

</body>
</html>
