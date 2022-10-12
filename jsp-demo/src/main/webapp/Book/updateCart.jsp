<%@ page import="java.util.Map" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.pojo.Book" %>
<%@ page import="com.Dao.BookDB" %>
<%@ page import="java.util.Collection" %><%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/10/10
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改购物车</title>
</head>
<body>
<%
    Map<Book, Integer> cart = (Map<Book, Integer>) session.getAttribute("cart");
    String act = request.getParameter("act");
    String id = request.getParameter("id");
    Iterator<Map.Entry<Book, Integer>> it = cart.entrySet().iterator();
    if (act.equals("add")) {
//        Integer count = 0;
//        while (it.hasNext()) {
//            Map.Entry<Book, Integer> entry = it.next();
//            Book book = entry.getKey();
//            if (book.getId() == id) {
//               count = entry.getValue() + 1;
//                break;
//            }
//            //cart.put(book, count);
//        }
        Book book = BookDB.getBook(id);
        Integer count = cart.get(book);
        cart.put(book, count + 1);
    } else if (act.equals("minus")) {
        Book book = BookDB.getBook(id);
        Integer count = cart.get(book);
        if (count > 1) {
            cart.put(book, count - 1);
        } else {
            cart.remove(book);
        }
    } else if (act.equals("clear")) {
        cart.clear();
    } else if (act.equals("remove")) {
 /*       while (it.hasNext()) {
            Map.Entry<Book, Integer> entry = it.next();
            Book book = entry.getKey();
            int id1 = book.getId();
            int idd = 0;
            if (id != null) {
                idd = Integer.parseInt(id);
            }
            if (id1 == idd) {
                it.remove();
            }
        }*/
        Book book = BookDB.getBook(id);
        cart.remove(book);
    }
    session.setAttribute("cart", cart);
    response.sendRedirect("showCart.jsp");

%>
</body>
</html>
