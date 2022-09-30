package com.itheima.web.session;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/demo2")
public class SessionDemo2 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        获取数据
//        1.获取Session对象
        HttpSession session = request.getSession();
        System.out.println(session);//org.apache.catalina.session.StandardSessionFacade@63ed115c 地址值一样，说明session与ServletDemo1中session对象一样

//        销毁
        session.invalidate();/*调用此方法销毁Session或无操作100分钟后自动销毁(默认30分钟，这里我们设置为100分钟了（src/main/webapp/WEB-INF/web.xml）)，，销毁后，后面获取数据就获取不到啦
        先访问demo1在访问demo2,demo2报HTTP Status 500 - getAttribute: Session already invalidated
        */
//        将来一般会将用户的数据存到Session对象里，当点击注销时会调用session对象的invalidate()方法，若无操作xxx分钟后也会自动注销（退出登录）用户
//        2.获取数据
        Object username = session.getAttribute("username");
        System.out.println(username);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
