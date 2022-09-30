

<%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/8/10
  Time: 10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><%--引入jstl--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<input type="button" value="新增"><br>
<hr>
<table border="1" cellspacing="0" width="800">


<c:forEach items="${brands}" var="brand" varStatus="status"><%--varStatus:状态 标序号约等于id--%>
    <tr align="center">
<%--        <td>${status.index}</td>&lt;%&ndash;从0开始;--%>
        <td>${status.count}</td><%--从1开始--%>
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
        <td><a href="#">修改</a> <a href="#">删除</a></td>
    </tr>
</c:forEach>



</table>
<hr>分页工具条
<c:forEach begin="1" end="10" step="1" var="i">
    <a href="#">${i}</a>
</c:forEach>
<%--
<table border="1" cellspacing="0" width="800">
    <tr>
        <th>序号</th>
        <th>品牌名称</th>
        <th>企业名称</th>
        <th>排序</th>
        <th>品牌介绍</th>
        <th>状态</th>
        <th>操作</th>

    </tr>
    <tr align="center">
        <td>1</td>
        <td>三只松鼠</td>
        <td>三只松鼠</td>
        <td>100</td>
        <td>三只松鼠，好吃不上火</td>
        <td>启用</td>
        <td><a href="#">修改</a> <a href="#">删除</a></td>
    </tr>

    <tr align="center">
        <td>2</td>
        <td>优衣库</td>
        <td>优衣库</td>
        <td>10</td>
        <td>优衣库，服适人生</td>
        <td>禁用</td>

        <td><a href="#">修改</a> <a href="#">删除</a></td>
    </tr>

    <tr align="center">
        <td>3</td>
        <td>小米</td>
        <td>小米科技有限公司</td>
        <td>1000</td>
        <td>为发烧而生</td>
        <td>启用</td>


        <td><a href="#">修改</a> <a href="#">删除</a></td>
    --%>
    </tr>


</table>

</body>
</html>
