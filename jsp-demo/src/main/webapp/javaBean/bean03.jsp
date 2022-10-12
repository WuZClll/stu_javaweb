<%@ page import="com.pojo.User" %>
<%@ page import="com.util.DBUtil" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %><%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/10/5
  Time: 9:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加用户注册信息</title>
</head>
<body>
<%
    User user = new User();
    user.setName(request.getParameter("username"));
    user.setPassword(request.getParameter("password"));
    user.setEmail(request.getParameter("email"));
    Connection conn = DBUtil.getConnection();
    PreparedStatement pstmt = null;
    String sql = "insert into users (name, password, email) VALUE (?, ?, ?)";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, user.getName());
    pstmt.setString(2, user.getPassword());
    pstmt.setString(3, user.getEmail());
    int n = pstmt.executeUpdate();
    if (n == 1) {
        out.println("添加用户成功");
    } else {
        out.println("添加用户失败");
    }


%>
</body>
</html>
