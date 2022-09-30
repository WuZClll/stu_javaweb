<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/9/21
  Time: 9:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>显示购买的商品</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String goods = request.getParameter("goods");
    if (goods != null && !"".equals(goods)) {
        //接收session里的属性cart
        ArrayList<String> cart = (ArrayList<String>) session.getAttribute("cart");
        if (cart == null) {
            //如果购物车为空，建立新集合
            cart = new ArrayList<String>();
        }
        cart.add(goods);
        session.setAttribute("cart", cart);
    } else {
        out.println("商品名不能为空!2秒后自动跳转到购物页面");
        response.setHeader("refresh", "2;url='shopping'");
    }

%>
<h3>您成功将<span style="color: #cc8d23"><%=goods%></span>添加到购物车  您还想做什么？</h3>
<button onclick="location.href='shopping.jsp'">继续购买</button>
<button onclick="location.href='pay.jsp'">立即支付</button>
</body>
</html>
