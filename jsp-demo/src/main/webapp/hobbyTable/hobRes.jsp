<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/9/13
  Time: 19:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String name = request.getParameter("username");
    String gender = request.getParameter("gender");
    String email = request.getParameter("email");
    String[] hobby = request.getParameterValues("hobby");
    Enumeration enu = request.getParameterNames();
    while (enu.hasMoreElements()) {
        String pname = (String) enu.nextElement();
        String pvalue = request.getParameter(pname);
        if (pname.equals("hobby")) {
            String msg = "";
            for (String ahobby :
                    hobby) {
                msg += ahobby + " ";
            }
            out.print("hobby:" + msg + "<br>");
        } else {
            out.print(pname + ":" + pvalue + "<br>");
        }
    }
%>
<%--姓名:<%= name%>--%>
<%--性别:<%= gender%>--%>
<%--邮箱:<%= email%>--%>
<%--爱好:<%--%>
<%--    String msg = "";--%>
<%--    for (int i = 0; i < hobby.length; i++) {--%>
<%--        msg += hobby[i] + ",";--%>
<%--    }--%>
<%--%>--%>
<%--<%=msg%>--%>
</body>
</html>
