<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/9/28
  Time: 11:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改用户</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    //接收用户输入的注册信息
    String name = request.getParameter("username");
    String pass = request.getParameter("password");
    String mail = request.getParameter("email");
    String id = request.getParameter("id");
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
        String sql = "update users set name = ?,password = ?,email = ? where id = ?";
        pstmt = conn.prepareStatement(sql);
//        rs = pstmt.executeQuery(sql);
        pstmt.setString(1, name);
        pstmt.setString(2, pass);
        pstmt.setString(3, mail);
        pstmt.setString(4, id);
        int i = pstmt.executeUpdate();
        if (i == 1) {
            out.println("修改成功");
            out.println("查看数据 <a href = \"../jdbclogin/listUser.jsp\">点击跳转遍历数据页面</a>");
        } else {
            out.println("注册失败");
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
