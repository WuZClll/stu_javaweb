package com.itheima.web.Servlet;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
/*
Request:获取请求数据
Response:设置响应数据
 */
@WebServlet("/demo23")
public class ServletDemo23 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //使用request对象 获取请求数据
        String name = req.getParameter("name");//eg:  http://localhost:8080/web-demo/demo23?name=zhangsan

        //使用response 设置响应数据
        resp.setHeader("content-type", "text/html;charset=utf-8");//设置响应头
        resp.getWriter().write("<h1>" + name + ",欢迎您！</h1>");//设置响应消息体
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Post...");
    }
}
