<%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/9/21
  Time: 10:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>输出真实路径</title>
</head>
<body>
<%
    String path = application.getRealPath("/");
    out.println("真实路径：" + path);//C:\Users\^\Documents\Tencent Files\1302344595\FileRecv\ideaProject\jsp-demo\src\main\webapp\
    String path1 = config.getServletContext().getRealPath("/");
    out.println("真实路径：" + path1);//C:\Users\^\Documents\Tencent Files\1302344595\FileRecv\ideaProject\jsp-demo\src\main\webapp\
%>

</body>
</html>
