<%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/10/5
  Time: 9:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@page import="com.pojo.Student" %>--%>
<html>
<head>
    <title>javaBean实例</title>
</head>
<body>
<jsp:useBean id="stu" class="com.pojo.Student" scope="page"/>
<%
//    Student stu = new Student();
    request.setCharacterEncoding("UTF-8");
//    stu.setSid(request.getParameter("sid"));
//    stu.setSname(request.getParameter("sname"));
//    stu.setSage(Integer.parseInt(request.getParameter("sage")));
%>
<jsp:setProperty name="stu" property="*"/><%--自动填充所有字段--%>
<%--<jsp:setProperty name="stu" property="sname" value="<%=request.getParameter("sname")%>"/>--%>
<%--<jsp:setProperty name="stu" property="sage" value="<%=request.getParameter("sage")%>"/>--%>
<h3>姓名<%=stu.getSname()%></h3>
<h3>年龄<%=stu.getSage()%></h3>
</body>
</html>
