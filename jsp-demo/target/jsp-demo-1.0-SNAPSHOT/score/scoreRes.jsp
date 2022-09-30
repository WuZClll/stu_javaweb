<%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/9/10
  Time: 18:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String guessNum = request.getParameter("guessNum");
    int gueNum = Integer.parseInt(guessNum);
    int c = 1;
    if (guessNum == null) {
%>
<jsp:forward page="notNull.jsp"></jsp:forward>

<%

} else if (gueNum >= 90) {
%>
<jsp:forward page="youxiu.jsp"></jsp:forward>

<%
} else if (gueNum >= 60 && gueNum < 90) {
%>
<jsp:forward page="shangke.jsp"></jsp:forward>

<%
} else if (gueNum < 60) {
%>
<jsp:forward page="bujige.jsp"></jsp:forward>

<%

    }
%>
</body>
</html>
