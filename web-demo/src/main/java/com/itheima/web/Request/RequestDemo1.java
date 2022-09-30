package com.itheima.web.Request;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
/*
http://localhost:8080/web-demo/req1?username=zhangsan&password=123
控制台输出：
req.getMethod():  GET  //请求方式
req.getContextPath():  /web-demo //虚拟目录
req.getRequestURL(): http://localhost:8080/web-demo/req1  //获取URL
req.getRequestURI(): /web-demo/req1  获取URI
req.getQueryString(): username=zhangsan&password=123  //获取请求参数

*/

//用到req.html
@WebServlet("/req1")
public class RequestDemo1 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //获取请求行
        System.out.println("--------获取请求行");
//                . String getMethod):获取请求方式: GET
        String method = req.getMethod();
        System.out.println("req.getMethod():  " + method);//GET|POST
//                . String getContextPath():获取虚拟目录(项目访问路径): /request-demo
        String contextPath = req.getContextPath();
        System.out.println("req.getContextPath():  " + contextPath);// /request-demo
//                . StringBuffer getRequestURL():获取URL(统一资源定位符): http://localhost:8080/request-demo/re
        StringBuffer url = req.getRequestURL();
        System.out.println("req.getRequestURL(): " + url.toString());
//                · String getRequestURI():获取URI(统一资源标识符): /request-demo/req1
        String uri = req.getRequestURI();
        System.out.println("req.getRequestURI(): " + uri);
//                . String getQueryString():获取请求参数（GET方式): username=zhangsan&password=123
        String queryString = req.getQueryString();
        System.out.println("req.getQueryString(): " + queryString);

        //获取请求体
        System.out.println("-------获取请求体");
        //获取请求头 user-agent:获取浏览器版本信息
        String agent = req.getHeader("user-agent");
        System.out.println(agent);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取Post请求体：请求参数
        //1.获取字符输入流
        BufferedReader br = req.getReader();
        //2.读取取数据
        String line = br.readLine();
        System.out.println(line);
    }
}
