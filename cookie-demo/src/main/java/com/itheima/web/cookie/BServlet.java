package com.itheima.web.cookie;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;

/*
    3．获取客户端携带的所有Cookie，使用request对象      BServlet
        Cookie[]cookies = request.getCookies();
    4.遍历数组，获取每一个Cookie对象:for5．使用Cookie对象方法获取数据
        cookie.getName();//获取键
        cookie.getValue();//获取值

先访问http://localhost:8080/cookie-demo/aServlet
再访问http://localhost:8080/cookie-demo/bServlet
可以发现bServlet中已经拥有了aServlet传过来的cookie
 */
@WebServlet("/bServlet")
public class BServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        获取cookie

//        1.获取cookie数组
        Cookie[] cookies = request.getCookies();

//        2.遍历数组
        for (Cookie cookie :
                cookies) {
//            由于有很多cookie，我们获取键为AServlet中发送的cookie值
            String name = cookie.getName();
//            URL解码
            if ("username".equals(name)) {
                String value = cookie.getValue();
                value = URLDecoder.decode(value, "UTF-8");
                System.out.println("已获取到aServlet发送的cookie：  " + name + ":" + value);
                break;
            }

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
