<%@ page import="java.math.BigInteger" %><%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/9/21
  Time: 11:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>网站计数器</title>
</head>
<body>
<%
    BigInteger counter = (BigInteger) application.getAttribute("counter");
    if (counter == null) {
        counter = new BigInteger("0");
    }
    if (session.isNew()) {
        synchronized (this) {
            counter = counter.add(new BigInteger("1"));
            application.setAttribute("counter", counter);
        }
    }
%>
<h2>网站的访问次数是： <%=counter%></h2>
</body>
</html>
