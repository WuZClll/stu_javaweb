<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/9/21
  Time: 9:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>结账页面</title>
</head>
<body>
<%
    ArrayList<String> cart = (ArrayList<String>) session.getAttribute("cart");
    if (cart != null) {
        int i = 0;
%>
<h1>非常感谢您的光临，您选择的商品有：</h1>
<%
    for (String goods :
            cart) {
%>

商品<%=++i%>:<%=goods%><br>
<%
        }
    } else {
        out.println("您尚未将商品加入购物车，购物车为空，选择商品？ <a href=\"shopping.jsp\">挑选商品</a>");
    }
%>

</body>
</html>
