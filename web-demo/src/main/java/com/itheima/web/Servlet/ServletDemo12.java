package com.itheima.web.Servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
//http://localhost:8080/web-demo/aaa.do

/*
/和/*区别:
当我们的项目中的Servlet配置了“/”，会覆盖掉tomcat中的DefaultServlet，当其他的url-pattern都匹配不上时都会走这个Servlet
当我们的项目中配置了“/*”，意味着匹配任意访问路径
 */
/*
优先级:
        精确路径>目录路径>扩展名路径>/ * >/
*/

/**
 * urlPattern:
 *  *任意匹配： /*    优先级高于/
 */
/*
@WebServlet(urlPatterns = "/*")
public class ServletDemo12 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("demo12get...");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("demo12post...");
    }
}
*/
