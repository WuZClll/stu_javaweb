<%@ page import="java.util.Collection" %>
<%@ page import="com.pojo.Book" %>
<%@ page import="com.Dao.BookDB" %><%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/10/10
  Time: 14:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品列表</title>
</head>
<body>
<%
    Collection<Book> books = BookDB.getAll();
    for (Book book :
            books) {
        String url = "buyBook.jsp?id=" + book.getId();
        out.println(book.getName() + "  " + book.getPrice() + "<a href = '" + url + "'>点击购买</a><br>");
    }
%>

</body>
</html>
