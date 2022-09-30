<%@ page import="javax.swing.*" %>
<%@ page import="java.math.BigInteger" %><%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/9/24
  Time: 13:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    int num = (Integer) session.getAttribute("num");
    String _guessNum = request.getParameter("guessNum");
    int guessNum = Integer.parseInt(_guessNum);
    int count = (Integer)session.getAttribute("count");
    count+=1;
    session.setAttribute("count", count);

    request.setAttribute("num", num);
    if (guessNum > num) {
        request.getRequestDispatcher("tooBigRes.jsp").forward(request, response);
    } else if (guessNum < num) {
        request.getRequestDispatcher("tooSmallRes.jsp").forward(request, response);
    } else if (guessNum == num) {
        request.getRequestDispatcher("relRes.jsp").forward(request, response);
    }
%>
</body>
</html>
