package com.itheima.web.Request;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
//http://localhost:8080/web-demo/req4?username=%E5%BC%A0%E4%B8%89&password=afa213&hobby=2
/**
 * 中文乱码问题的解决方案
 */
//快捷方式 右键→new→Servlet直接生成这个
@WebServlet("/req4")
public class RequestDemo4 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.POST,解决乱码：getReader()
        request.setCharacterEncoding("UTF-8");//设置字符输入流的编码

        //2.获取username
        String username = request.getParameter("username");
        System.out.println("解决乱码前" + username);//å¼ ä¸

        //3.Get, 获取参数的方式：getQueryString
        //  乱码原因：详见URLDemo
        ///乱码原因: tomcat进行URL解码，默认的字符集IS0-8859-1
        // 3.1先对乱码数据进行编码:转为字节数组

/*
        byte[] bytes = username.getBytes(StandardCharsets.ISO_8859_1);
        //3.2字节数组解码
        username = new String(bytes,StandardCharsets.UTF_8);
        */

        username = new String(username.getBytes(StandardCharsets.ISO_8859_1),StandardCharsets.UTF_8);
        System.out.println("解决乱码后" + username);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
