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
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    String url = "jdbc:mysql:///jsp_db?useUnicode=true&characterEncoding=UTF-8";
    String username = "root";
    String password = "123456";
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(url, username, password);
//        String sql = "select * from users where name = '" + name + "' and password = '" + pass + "'";
//        pstmt = conn.createStatement();
        //防止SQL注入
        String sql = "select * from users where name = ? and password = ?";
        pstmt = conn.prepareStatement(sql);
//        rs = pstmt.executeQuery(sql);
        pstmt.setString(1, name);
        pstmt.setString(2, pass);
        rs = pstmt.executeQuery();
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
        if (pstmt != null) {
            try {
                pstmt.close();
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
