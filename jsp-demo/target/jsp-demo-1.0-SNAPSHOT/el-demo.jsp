<%--
  Created by IntelliJ IDEA.
  User: ^
  Date: 2022/8/10
  Time: 9:57
  To change this template use File | Settings | File Templates.
--%>
<%--
EL表达式
Expression Language表达式语言，用于简化JSP页面内的Java代码
·主要功能:获取数据
语法:${expression}
${fbrands}︰获取域中存储的key为brands的数据
JavaWeb中的四大域对象:
1. page:当前页面有效2. request:当前请求有效3. session:当前会话有效4. application:当前应用有效
el表达式获取数据，会依次从这4个域中寻找，直到找到为止
--%>

<%--你需要在开头添加这句<%@ page isELIgnored="false"%>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%><%--Ignored:忽略--%>
<html>
<head>
    <title>em-demo</title>
</head>
<body>
${brands}
<%--[Brand{id=1, brandName='三只松鼠', companyName='三只松鼠', ordered=100, description='三只松鼠，好吃不上火', status=1}, Brand{id=2, brandName='优衣库', companyName='优衣库', ordered=200, description='优衣库，服适人生', status=0}, Brand{id=3, brandName='小米', companyName='小米科技有限公司', ordered=1000, description='为发烧而生', status=1}]--%>
</body>
</html>
