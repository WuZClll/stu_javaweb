<%@ page import="java.util.Map" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.pojo.Book" %><%--
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
    Map<Book,Integer> cart = (Map<Book,Integer>)session.getAttribute("cart");
    String act = request.getParameter( "act");
    int id = Integer.parseInt(request.getParameter( "id"));
    Iterator<Map.Entry<Book,Integer>> it = cart.entrySet().iterator();
    if(act.equals("add")){
        while (it.hasNext()) {
            Map.Entry<Book, Integer> entry = it.next();
            Book book = entry.getKey();
            if (book.getId() == id) {
                Integer count = entry.getValue() + 1;
            }
        }
    } else if(act.equals( "minus" )){

%>
</body>
</html>
