<%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/9/13
  Time: 19:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="hobRes.jsp" method="post">
    用户名:<input type="text" name="username"><br>
    性别:<input type="radio" name="gender" value="男">男<br>
    <input type="radio" name="gender" value="女">女<br>
    邮箱:<input type="text" name="email">
    兴趣爱好:<input type="checkbox" name="hobby" value="唱">唱<br>
    <input type="checkbox" name="hobby" value="跳">跳<br>
    <input type="checkbox" name="hobby" value="rap">rap<br>
    <input type="checkbox" name="hobby" value="篮球">篮球<br>
    <input type="submit" value="注册">
    <input type="reset" value="重置">
</form>
</body>
</html>
