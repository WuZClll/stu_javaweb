package com.itheima.web.Response;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
/*
Response响应 字符 数据
使用:
    1.通过Response对象获取字符输出流
        PrintWriter writer = resp.getWriter();//请求完毕后response对象会被销毁，流会被自动关闭，不需要手动close
    2.写数据
        //content-type
        response.setHeader("content-type", "text/html");//告诉浏览器相应的数据是html格式的,不写此代码表示纯文本
        writer.write("<h1>aaa</h1>");
    3.注意
        ·该流(write)不需要关闭，随着响应结束，response对象销毁，由服务器关闭
        .中文数据乱码:原因通过Response获取的字符输出流默认编码:ISO-8859-1
        .resp.setContentType("text/html;charset=utf-8");

 */
/**
 * 响应字符数据: 设置字符数据的响应体
 */
@WebServlet("/resp3")
public class ResponseDemo3 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //告诉浏览器相应的数据是html格式的,设置编码为utf-8防止响应字符数据中文乱码
        response.setContentType("text/html;charset=utf-8");
        //获取字符输出流
        PrintWriter writer = response.getWriter();//●注意:该流不需要关闭，随着响应结束，response对象销毁，由服务器关闭

        //content-type
//        response.setHeader("content-type", "text/html");//告诉浏览器相应的数据是html格式的
        writer.write("你好");
        writer.write("<h1>aaa</h1>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
