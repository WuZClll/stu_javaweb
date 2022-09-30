package com.itheima.web.session;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/demo1")
public class SessionDemo1 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        存储数据到Session中
//        1.获取Session对象 在ServletDemo2中也创建此对象用来共享数据
        HttpSession session = request.getSession();
        System.out.println(session);//org.apache.catalina.session.StandardSessionFacade@63ed115c 地址值一样，说明session与ServletDemo2中session对象一样
//        2.存储数据
        session.setAttribute("username", "zs");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
