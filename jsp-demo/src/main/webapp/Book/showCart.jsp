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
<table border="1" width="450" cellpadding="0px" cellspacing="0">
    <tr>
        <td>书名</td>
        <td>价格</td>
        <td>购买数量</td>
        <td>总价（元）</td>
        <td>移除</td>
    </tr>
    <%
        double total = 0;
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
        <td>
            <%=book.getName()%>
        </td>
        <td>
            <%=book.getPrice()%>
        </td>
        <td>
            <a href="updateCart.jsp?act=add&id=<%=book.getId()%>"><input type="button" style="width: 16px"
                                                                         value="+"></a>
            <%=count%>
            <a href="updateCart.jsp?act=minus&id=<%=book.getId()%>"><input type="button" style="width: 16px" value="-"></a>
        </td>
        <td>
            <%=book.getPrice() * count%>
        </td>
        <td><a href="updateCart.jsp?act=remove&id=<%=book.getId()%>">移除该商品</a></td>
    </tr>
    <%
            total += book.getPrice() * count;
        }
    %>
    <tr height="50" align="center">
        <td colspan="5">应付金额：<%=total%>
        </td>
    </tr>
    <tr height="50" align="center">
        <td colspan="2">
            <a href="listBook.jsp">继续购物</a>
        </td>
        <td colspan="3">
            <a href="updateCart.jsp?act=clear">清空购物车</a>
        </td>
    </tr>

</table>
</body>
</html>
