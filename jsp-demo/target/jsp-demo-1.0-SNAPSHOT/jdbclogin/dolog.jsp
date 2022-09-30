<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/9/26
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询用户名密码</title>
</head>
<body>
<%
    //接收用户名和密码
    String name = request.getParameter("username");
    String pass = request.getParameter("password");
    //访问数据库
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;
    String url = "jdbc:mysql:///jsp_db";
    String username = "root";
    String password = "123456";
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(url, username, password);
        String sql = "select * from users where name = '" + name + "' and password = '" + pass + "'";
        stmt = conn.createStatement();
        rs = stmt.executeQuery(sql);
        if (rs.next()) {
            out.println("<h1>登录成功</h1>");
            session.setAttribute("username", name);
            response.sendRedirect("../LogInCloud/bot.jsp");
        } else {
            out.println("用户名或密码错误，请重新<a href = \"../LogInCloud/bottom.jsp\">登录</a>");
        }
    } catch (ClassNotFoundException e) {
        out.println("驱动加载失败~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
        e.printStackTrace();
    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (stmt != null) {
            try {
                stmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
%>

</body>
</html>
