<%@ page import="com.Dao.BookDB" %>
<%@ page import="com.pojo.Book" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/10/10
  Time: 14:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>向购物车里添加购买条目</title>
</head>
<body>
<%
    String id = request.getParameter("id");
    out.println(id);
    Book book = BookDB.getBook(id);
    out.println(book.toString());
    //创建或获取购物车对象
    Map<Book, Integer> cart = (Map<Book, Integer>) session.getAttribute("cart");
    if (cart == null) {
        cart = new HashMap<Book, Integer>();
    }
    //向购物车里添加图书购买信息
    Integer count = cart.put(book, 1);
    if (count != null) {
        cart.put(book, count+1);
    }
    //因为可以反复购买所以用session
    session.setAttribute("cart", cart);
    response.sendRedirect("showCart.jsp");
%>

</body>
</html>
