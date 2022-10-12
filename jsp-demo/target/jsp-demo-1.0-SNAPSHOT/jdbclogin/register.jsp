<%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/9/28
  Time: 9:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户注册</title>
</head>
<body>
<h2>用户注册信息</h2>
<form action="adduser.jsp">
  用户名&nbsp;&nbsp;： <input type="text" name="username" placeholder="请输入用户名"><br>
  密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：<input type="password" name="password"><br>
  确认密码：<input type="password" name="rePassword" id=""><br>
  邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱：<input type="text" name="email"><br>
  <input type="submit" value="提交">&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="reset" value="重置">

</form>
</body>
</html>
