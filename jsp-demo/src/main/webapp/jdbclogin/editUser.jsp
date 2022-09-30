<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/9/28
  Time: 11:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改用户信息</title>
</head>
<body>
<%
    //接收传递过来的id
    String id = request.getParameter("id");
    int i = 0;
    if (id != null) {
        i = Integer.parseInt(id);
    }
    //访问数据库
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    String url = "jdbc:mysql:///jsp_db";
    String username = "root";
    String password = "123456";
    Class.forName("com.mysql.cj.jdbc.Driver");
    conn = DriverManager.getConnection(url, username, password);
    String sql = "select * from users where id = ?";
    pstmt = conn.prepareStatement(sql);
    pstmt.setInt(1, i);
    rs = pstmt.executeQuery();
    if (rs.next()) {

%>
<h2>用户信息</h2>
<form action="doUpdate.jsp" method="post"><%--回滚数据--%>
    用户名&nbsp;&nbsp;： <input type="text" name="username" value="<%=rs.getString("name")%>" placeholder="请输入用户名"><br>
    密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：<input type="password" name="password" value="<%=rs.getString("password")%>"><br>
    确认密码：<input type="password" id=""><br>
    邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱：<input type="text" name="email" value="<%=rs.getString("email")%>"><br>
    <input type="submit" value="确认修改">&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="reset" value="重新输入">
</form>
<%
    }
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
%>
</body>
</html>
