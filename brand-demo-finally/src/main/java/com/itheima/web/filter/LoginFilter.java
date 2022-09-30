package com.itheima.web.filter;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * 登录验证的过滤器
 */
@WebFilter("/*")
public class LoginFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest req = (HttpServletRequest) request;

        //判断访问的资源路径是否和登录注册相关
        String[] urls = {"/login.jsp","/imgs/","/css/","/loginServlet","/register.jsp","/registerServlet","checkCodeServlet"};
        //获取当前访问的资源路径
        String url = req.getRequestURL().toString();

        //循环判断
        for (String u : urls) {
            if (url.contains(u)) {/*url.包含（u）*/
                //找到了  无条件放行
                //放行
                chain.doFilter(request, response);
                return;/*把方法结束掉，不在运行后面的代码*/



            }
        }


        //1.判断session中是否有user
        HttpSession session = req.getSession();
        Object user = session.getAttribute("user");

        //2.判断user是否为null
        if (user != null) {
            //用户登陆过了
            //放行
            chain.doFilter(request, response);
        } else {
            // 用户没有登录，存储提示信息跳转到登陆页面
            req.setAttribute("login_msg","您尚未登陆！");
            req.getRequestDispatcher("/login.jsp").forward(req,response);

        }


    }
}
