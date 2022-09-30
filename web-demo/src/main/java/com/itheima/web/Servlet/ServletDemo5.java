package com.itheima.web.Servlet;


import com.itheima.web.MyHttpServlet;

import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;

@WebServlet("/demo5")
public class ServletDemo5 extends MyHttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, ServletResponse servletResponse) {
        System.out.println("get。。。");
    }

    @Override
    protected void doPost(HttpServletRequest request, ServletResponse servletResponse) {
        System.out.println("post。。。");
    }
}
