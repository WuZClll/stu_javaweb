<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/9/21
  Time: 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String name = (String) application.getAttribute("name");
    Date birthday = (Date) application.getAttribute("birthday");
    String address = (String) request.getAttribute("address");
    Integer counter = (Integer) request.getAttribute("counter");
%>
<h3>姓名：<%=name%>
</h3>
<h3>日期： <%=birthday%>
</h3>
<h3>地址： <%=address%>
</h3>
<h3>计数器： <%=counter%>
</h3>
<h3><a href="applicationDemo3.jsp">跳转</a></h3>
</body>
</html>
