package com.itheima.web.Response;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
/*
Response完成重定向
·重定向(Redirect):一种资源跳转方式
浏|--------请求-------->资
览|<-------响应---------源A
器|          |
   \          、_1.我处理不了，找别人处理去吧  状态码302
    \         |_2.那个人的位置是xxx：响应头  location:xxx
     \
      `----->资源B
实现方式:
    resp.setStatus(302);//设置响应状态码
    resp.setHeader("location”,“资源B的路径");//设置响应头（头的名称是固定的，头的值是路径）
简化书写：
    resp.sendRedirect("资源B的路径")
重定向特点:
    浏览器地址栏路径发生变化
    可以重定向到任意位置的资源（服务器内部、外部均可)
    两次请求，不能在多个资源使用request共享数据
 */
@WebServlet("/resp1")
public class ResponseDemo1 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("resp1...");

        //重定向
/*
        //1.设置相应码302
        response.setStatus(302);
        //2.设置响应头 Location
        response.setHeader("Location", "/web-demo/resp2");
*/

        //简化方式完成重定向
        //动态获取虚拟目录
        String contextPath = request.getContextPath();///request-demo
        response.sendRedirect(contextPath + "/resp2");
//        response.sendRedirect("http://www.itcast.cn");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
