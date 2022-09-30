package com.itheima.web.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/**
 * Servlet代码优化
 * 实现HttpServlet根据请求方式get/post进行方法分发
 * 此类 替换 HttpServlet，根据请求最后一段（方法名）路径进行方法分发
 */

public class BaseServlet extends HttpServlet {


    //让其根据请求最后一段路径进行方法分发
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //1.获取请求路径
        //eg:访问 http://localhost:8080/brand-case/brand/selectAll 时：
        String uri = req.getRequestURI();//uri是短路径  url是长路径
//        System.out.println(uri);//  /brand-case/brand/selectAll
        //2.获取最后一段路径，也就是方法名
        int index = uri.lastIndexOf("/");//索引从0开始
//        System.out.println(index);//17
        String methodName = uri.substring(index+1);//selectAll
//        System.out.println(methodName);//   selectAll

        //2.执行方法

        //2.1获取BrandServlet || UserServlet 字节码对象 也就是Class对象

        //this的含义：谁调用我（this所在的方法）,我（this）代表谁     即 谁调用了this所在的方法 this就代表谁
//        System.out.println(this);//com.itheima.web.servlet.BrandServlet@4d9305af   //原因 BrandServlet继承自BaseServlet BrandServlet是Servlet执行时他就会调用 BaseServlet里的service方法，也就是说this所在的方法service() 被BrandService调用了,this就代表BrandServlet

        Class<? extends BaseServlet> cls = this.getClass();//相当于BaseServlet.getClass  把BaseServlet转为字节码文件

        try {
            //2.2获取Method 对象
            Method method = cls.getMethod(methodName, HttpServletRequest.class, HttpServletResponse.class);
        //2.3执行方法
            method.invoke(this,req,resp);
        } catch (NoSuchMethodException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e) {
            throw new RuntimeException(e);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        }


    }
}
