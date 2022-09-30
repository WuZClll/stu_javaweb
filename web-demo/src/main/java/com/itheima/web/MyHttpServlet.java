package com.itheima.web;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class MyHttpServlet implements Servlet {
    @Override
    public void init(ServletConfig servletConfig) throws ServletException {

    }

    @Override
    public ServletConfig getServletConfig() {
        return null;
    }

    @Override
    public void service(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, IOException {
        //根据请求方式的不同，进行分别的处理
        HttpServletRequest request = (HttpServletRequest) servletRequest;

        //1.获取请求方式
        String method = request.getMethod();

        //2.判断
        if ("GET".equals(method)) {
            //get方式的处理逻辑
            doGet(request,servletResponse);
        } else if("POST".equals(method)) {
            ///post方式的处理逻辑
            doPost(request,servletResponse);
        }
    }

    //用表单post方式调用post方法
    protected void doPost(HttpServletRequest request, ServletResponse servletResponse) {
    }

    //浏览器直接访问会用doGet方法
    //protected让子类可以看到这个方法
    protected void doGet(HttpServletRequest request, ServletResponse servletResponse) {
    }

    @Override
    public String getServletInfo() {
        return null;
    }

    @Override
    public void destroy() {

    }
}
