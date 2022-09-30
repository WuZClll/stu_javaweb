package com.itheima.web.Request;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
//http://localhost:8080/web-demo/req5
//控制台输出demo5...demo6...
/*
请求转发(forward):一种在服务器（tomcat）内部的资源跳转方式  RequestDemo5 & RequestDemo6
    浏|-------请求------> 资源A 口|tom
    览|                  ↓（共享）|cat
    器|<------响应--------资源B 口|
请求转发特点:
    >浏览器地址栏路径不发生变化
    >只能转发到当前服务器的内部资源
    >—次请求，可以在转发的资源间使用request共享数据
实现方式:
    req.getRequestDispatcher("资源B路径").forward(req,resp);
请求转发资源间共享数据:使用Request对象
    void setAttribute(String name, Object o):存储数据到request域中
    Object getAttribute(String name):根据key，获取值
    void removeAttribute(String name):根据key，删除该键值对
路径问题:
    浏览器使用:需要加虚拟目录(项目访问路径)
    服务端使用:不需要加虚拟目录

 */
/**
 * 请求转发(forward):一种在服务器内部的资源跳转方式  RequestDemo5 & RequestDemo6
 */
//快捷方式 右键→new→Servlet直接生成这个
@WebServlet("/req5")
public class RequestDemo5 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("demo5...");

        //存储数据
        request.setAttribute("msg", "hello");

/*
        //删除存储的键值对
        request.removeAttribute("msg");
*/

        //请求转发
        //  请求.获取请求目录.转发
        request.getRequestDispatcher("/req6").forward(request,response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
