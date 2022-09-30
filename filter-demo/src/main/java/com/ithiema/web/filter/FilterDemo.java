package com.ithiema.web.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

@WebFilter("/*")/*配置拦截路径*/
public class FilterDemo implements Filter {
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        //1.放行前，对request数据进行处理
        System.out.println("1.FilterDemo...-访问前逻辑");

//        放行//若不放行 eg:访问hello.jsp页面不会输出但也不会报错， 控制台输出FilterDemo
        filterChain.doFilter(servletRequest,servletResponse);

        //2.放行后，对response的数据进行处理
        System.out.println("3.FilterDemo...-访问后逻辑");
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }


    @Override
    public void destroy() {

    }
}
