<%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/9/7
  Time: 11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>阶乘结果</title>
</head>
<body>
<%
    String num = request.getParameter("num");
    int num1 = Integer.parseInt(num);
%>
<%!
int factorial(int i) {
    int a = 1;
    for (int j = 1; j <= i; j++) {
        a=a*j;
    }
    return a;
}
%>
<%
    int a  = factorial(num1);
%>
<%=a%>

</body>
</html>
