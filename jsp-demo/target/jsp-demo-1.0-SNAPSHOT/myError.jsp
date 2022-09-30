<%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/9/7
  Time: 9:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<html>
<head>
    <title>提示错误信息</title>
</head>
<body>
<h2>出错啦，请输入数值类型</h2>
<%=exception.getMessage()%><a href="guessNumber.jsp">返回</a><%--输出异常信息--%>

</body>
</html>
