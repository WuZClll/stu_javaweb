<%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/9/12
  Time: 15:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if (username.equals("zhangsan") && password.equals("123")) {


/*
//创建新的Cookie
        Cookie nameCookie = new Cookie("name", username);
        Cookie passwordCookie = new Cookie("password", password);


//将Cookie写入客户端
        response.addCookie(nameCookie);
        response.addCookie(passwordCookie);

        nameCookie.setMaxAge(3600 * 7 * 24);
        passwordCookie.setMaxAge(3600 * 7 * 24);
*/
        out.println(username + "欢迎您");
        session.setAttribute("username",username);
        response.sendRedirect("bot.jsp");
//        重定向
//        response.sendRedirect("bot.jsp");

//        request.setAttribute("username", username);
%>

<%--<jsp:forward page="bottom.jsp"></jsp:forward>--%>
<%
    } else {
        out.println(username + "欢迎您");
        out.println("用户名或密码错误，请重新<a href = \"bottom.jsp\">登录</a>");
    }
%>
</body>
</html>
