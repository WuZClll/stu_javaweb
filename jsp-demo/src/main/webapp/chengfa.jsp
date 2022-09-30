<%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/8/31
  Time: 11:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>九九乘法表</title>
</head>
<body>
<table border="1" width="400px">
<%
    for (int i = 1; i <= 9; i++) {
%>
<tr>
    <%
        for (int j = 1; j <= i; j++) {
    %>
    <td><%=i%>*<%=j%>=<%=i * j%></td>

    <%
        }
    %>
</tr>
<%
    }
%>
</table>


</body>
</html>
