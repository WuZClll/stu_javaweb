<%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/8/7
  Time: 19:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>JSP,Hello World</h1>
<%--
JSP脚本
    JSP脚本用于在JSP页面内定义Java代码
    ● JSP脚本分类:
        1.<%...%>:内容会直接放到_jspService()方法之中
        2.<%=...%>︰内容会放到out.print()中，作为out.print()的参数
        3.<%!..%>:内容会放到_jspService()方法之外，被类直接包含
--%>
<%
//    jdk17有bug 直接敲out.println(s);就可以
    out.println("hello,jsp~");
    int i = 3;
%>
<%="hello"%>
<%=i%>
<%!
    void show() {

    }
    String name = "zhangsan";
%>
</body>
</html>