package com.itheima.web.Listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * 监听器的使用
 * ServletContext监听 用于监听application对象（整个web应用）的创建和销毁 当此对象创建或销毁时会执行相应的方法
 */
@WebListener
public class ContextLoaderListener implements ServletContextListener {
    @Override
//    当web应用创建时 运行初始化方法
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        //加载资源
        System.out.println("ContextLoaderListener...");
    }

    @Override
//    销毁方法
    public void contextDestroyed(ServletContextEvent servletContextEvent) {
        //释放资源
    }
}
