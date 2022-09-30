<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/9/14
  Time: 10:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Date date = new Date();
    String dateFormat = "yyyy-MM-dd \n\t HH:mm:ss";
    SimpleDateFormat sdf = new SimpleDateFormat(dateFormat);
    out.print(" <h3 align=center >现在时间为: " + sdf.format(date) + "</h3><br>");
    //response.setHeader( "Refresh","1");
%>
<h3>3秒后跳转到主页，如果没有跳转，请点击<a href="hello.jsp">跳转</a></h3><%
    // response.setHeader ("Refresh" , "3;URL=http://localhost:8080/finstweb/index.jsp");
    out.println("=============response跳转前=============");
    response.sendRedirect("./LogInCloud/bottom.jsp");//重定向
    out.println("=========response 跳转后==============");
%>

</body>
</html>
