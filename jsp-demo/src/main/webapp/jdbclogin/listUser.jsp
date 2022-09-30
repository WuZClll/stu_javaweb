<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/9/28
  Time: 10:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    a {
        color: #cc8d23;
        background-color: antiquewhite;
        text-decoration: none;
    }
</style>
<body>
<table border="2px" cellpadding="1px">
    <%
        //访问数据库
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        String url = "jdbc:mysql:///jsp_db";
        String username = "root";
        String password = "123456";
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(url, username, password);
        String sql = "select * from users";
        stmt = conn.createStatement();
        rs = stmt.executeQuery(sql);
        while (rs.next()) {
    %>

    <tr>
        <td><%=rs.getString("name")%>
        </td>
        <td><%=rs.getString("password")%>
        </td>
        <td><%=rs.getString("email")%>
        </td>
        <td><a href="editUser.jsp?id=<%=rs.getInt(1)%>">修改该用户</a></td>
    </tr>

<%
    }
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
%>
</table>

</body>
</html>
