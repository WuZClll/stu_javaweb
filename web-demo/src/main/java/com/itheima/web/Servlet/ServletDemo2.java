package com.itheima.web.Servlet;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;

//配置访问路径
@WebServlet(urlPatterns = "/demo2",loadOnStartup = 1)
public class ServletDemo2 implements Servlet {

    /**
     *初始化方法
     *1.调用时机：默认情况下，Servlet被第一次访问时，调用
     * loadOnStartup = ①/②
     * ①负整数:第一次被访问时创建Servlet对象
     * ②0或正整数:服务器启动时创建Servlet对象，数字越小优先级越高
     *  *loadOnStartup:
     *2.调用次数：1次
     * @param servletConfig
     * @throws ServletException
     */

    @Override
    public void init(ServletConfig servletConfig) throws ServletException {
        System.out.println("init...");

    }

    /**
     * 提供服务
     * 1.调用时机：每一次Servlet被访问时：调用
     * 2.调用次数：多次
     *
     * @param servletRequest
     * @param servletResponse
     * @throws ServletException
     * @throws IOException
     */
    @Override
    public void service(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, IOException {
        System.out.println("servlet hello world~");
    }

    /**
     * 销毁方法
     * 1.调用时机：内存释放或者服务器关闭的时候，Servlet对象会被销毁，调用
     * 2.调用次数：1次
     */
    @Override
    public void destroy() {
        System.out.println("destroy.....");

    }

    @Override
    public ServletConfig getServletConfig() {
        return null;
    }

    @Override
    public String getServletInfo() {
        return null;
    }
}
