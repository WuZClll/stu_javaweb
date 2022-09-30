<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/9/14
  Time: 10:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>request获取消息头</title>
</head>
<body>
<%
Enumeration enu = request.getHeaderNames();
//取得全部头信息
while (enu.hasMoreElements()){
String headName = ( String)enu.nextElement();
String headvalue = request.getHeader(headName);

%>
<%--取出头信息内容--%>
<h5><%=headName%>-----><%=headvalue%></h5>
<%
    }
    String method = request.getMethod();//取得请求方式
    String ip = request.getRemoteAddr();//获取客户端的IP地址
    String path = request.getServletPath();//取得访问路径
    String contentPath = request.getContextPath();//取得上下文资源路径
%>
<h5>------------------------------------------------------------------------</h5>
<h5>请求方式:<%=method%></h5><h5>IP地址:<%=ip%></h5>
<h5>访问路径:<%=path%></h5>
<h5>上下文路径:<%=contentPath%></h5>

</body>
</html>
