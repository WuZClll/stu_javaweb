package com.itheima.web.cookie;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.net.URLEncoder;

/*
Cookie基本使用  AServlet && BServlet
    Cookie:客户端会话技术，将数据保存到客户端，以后每次请求都携带Cookie数据进行访问
    Cookie基本使用
    1.创建Cookie对象，设置数据       AServlet
        Cookie cookie = new Cookie("key" ,"value");
    2.发送Cookie到客户端:使用response对象
        response.addCookie(cookie);
    3.4.见BServlet
 */
@WebServlet("/aServlet")
public class AServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        发送cookie

//        1.创建Cookie对象,设置数据
//        Cookie cookie = new Cookie("username", "zs");
//        Cookie cookie = new Cookie("username", "张三");//中文无法访问，报错：HTTP Status 500 - Control character in cookie value or attribute

        String value = "张三";
//        URL编码//解决中文报错500问题
        value = URLEncoder.encode(value, "UTF-8");
        System.out.println("存储数据：" + value);
        Cookie cookie = new Cookie("username", value);//中文无法访问，报错：HTTP Status 500 - Control character in cookie value or attribute

//        设置存活时间    一周7天/*设置后即使浏览器关闭也会存储一段时间*/
        cookie.setMaxAge(60*60*24*7);/*设置存活秒数*/

//        2.发送coolie，使用response对象发
        response.addCookie(cookie);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
