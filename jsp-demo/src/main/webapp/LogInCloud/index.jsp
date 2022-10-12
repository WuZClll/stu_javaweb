<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    a {
        color: #cc8d23;
        background-color: antiquewhite;
        text-decoration: none;
    }
</style>
<body>
<%
    /*    Cookie[] cookies = request.getCookies();
        boolean flag = false;
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("name")) {
                flag = true;
            }
        }
        if (flag) {*/
    Object username = session.getAttribute("username");
    if (username != null) {
%>
<ol>
    <li><a href="../chengfa.jsp">九九乘法表</a></li>
    <li><a href="../factorial.jsp">求阶乘</a></li>
    <li><a href="../userVsist.jsp">用户访问次数</a></li>
    <li><a href="../guessNumber.jsp">猜数字游戏1.0</a></li>
    <li><a href="../selectStuImg.jsp">显示学生图片</a></li>
    <li><a href="../score/scoreIn.jsp">查成绩</a></li>
    <li><a href="../hobbyTable/hobTab.jsp">用户爱好收集</a></li>
    <li><a href="../shopping/shopping.jsp">简易购物车</a></li>
    <li><a href="../application/applicationDemo1.jsp">application真实路径</a></li>
    <li><a href="../application/applicationDemo2.jsp">application范围的属性验证</a></li>
    <li><a href="../application/applicationDemo4.jsp">网站计数器</a></li>
    <li><a href="../guessNum/startGueNum.jsp">猜数字游戏2.0</a></li>
    <li><a href="../jdbclogin/listUser.jsp">遍历数据</a></li>
    <li><a href="../javaBean/bean01.jsp">javaBean01</a></li>
    <li><a href="../Book/listBook.jsp">Book购物车</a></li>
    <li><a href="../jdbclogin/register.jsp">注册用户</a></li>
    <li><a href="bottom.jsp">登录页面</a></li>
    <li><a href="logout.jsp">注销用户</a></li>

</ol>
<%
} else {
%>
用户尚未登陆，登录？<a href="bottom.jsp">点击此处</a>跳转至登录页面
没有账号？ <a href="jdbclogin/register.jsp">点击此处</a>跳转至注册页面
<%
    }
%>
</body>
</html>
