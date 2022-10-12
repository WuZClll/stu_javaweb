<%@ page import="com.pojo.Book" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.Iterator" %><%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/10/10
  Time: 14:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>显示购物车信息</title>
</head>
<body>
<table border="2px" cellpadding="1px">
    <tr>
        <td>书名</td>
        <td>编号</td>
        <td>数目</td>
    </tr>
<%
    Map<Book, Integer> cart = (Map<Book, Integer>) session.getAttribute("cart");

    //遍历map集合
    Iterator<Map.Entry<Book, Integer>> it = cart.entrySet().iterator();
    while (it.hasNext()) {
        Map.Entry<Book, Integer> entry = it.next();
        Book book = entry.getKey();
        Integer count = entry.getValue();
//        out.println("书名:" + book.getName() + "价格:" + book.getPrice() + "购买数量：" + count + "<br>");
%>
    <tr>
        <td><%=book.getName()%></td>
        <td><%=book.getId()%></td>
        <td><%=count%></td>
    </tr>

<%
    }
%>
</table>
<a href="listBook.jsp">继续购物</a>
</body>
</html>
