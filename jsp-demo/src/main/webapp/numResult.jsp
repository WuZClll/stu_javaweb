<%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/9/1
  Time: 17:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="myError.jsp" %>
<html>
<head>
    <title>结果</title>
</head>
<body>
<%
    //    String num = request.getParameter("num");
//    int number = Integer.parseInt(num);//
    String num = request.getParameter("num");
    int number = Integer.parseInt(num);
%>
<form action="numResult.jsp" method="post">
    <input style="display: none" type="text" name="num" value="<%=num%>">
    随机分给了你一个数（1-20）：<input type="text" name="guessNum"><br>
    <input type="submit" value="查看结果" name="submit">
</form>
<%
    String guessNum = request.getParameter("guessNum");
    int gueNum = Integer.parseInt(guessNum);
    if (num == null) {
    } else {
        if (gueNum == number) {
            out.println("恭喜你猜中了");
        } else if (gueNum < number) {
            out.println("您猜小了，请重新猜");
        } else if (gueNum > number) {
            out.println("您猜大了，请重新猜");
        }
    }%>

</form>

</body>
</html>
