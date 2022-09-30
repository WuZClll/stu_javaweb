<%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/8/10
  Time: 10:48
  To change this template use File | Settings | File Templates.
--%>
<%--
查询所有（SelectAllServlet）转发到的页面
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %><%--允许使用EL表达式--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><%--引入jstl--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>

<input type="button" value="新增" id="add"><br>
<hr>
<table border="1" cellspacing="0" width="80%">
    <tr>
        <th>序号</th>
        <th>品牌名称</th>
        <th>企业名称</th>
        <th>排序</th>
        <th>品牌介绍</th>
        <th>状态</th>
        <th>操作</th>

    </tr>


    <c:forEach items="${brands}" var="brand" varStatus="status"><%--varStatus:状态 标序号约等于id--%>
        <tr align="center">
                <%--        <td>${status.index}</td>&lt;%&ndash;从0开始;--%>
            <td>${status.count}</td>
                <%--从1开始--%>
                <%--        <td>${brand.id}</td>&lt;%&ndash;${brand.id} -解析> Id -解析> getId-调用>Brand.java的getId&ndash;%&gt;--%>
            <td>${brand.brandName}</td>
            <td>${brand.companyName}</td>
            <td>${brand.ordered}</td>
            <td>${brand.description}</td>
            <c:if test="${brand.status == 1}">
                <td>启用</td>
            </c:if>
            <c:if test="${brand.status != 1}">
                <td>禁用</td>
            </c:if>
            <td><a href="/brand-demo/selectByIdServlet?id=${brand.id}">修改</a> <a href="/brand-demo/deleteByIdServlet?id=${brand.id}">删除</a></td>
        </tr>
    </c:forEach>
</table>
<script>
    document.getElementById("add").onclick = function () {
        location.href = "/brand-demo/addBrand.jsp";
    }

</script>

</body>
</html>
