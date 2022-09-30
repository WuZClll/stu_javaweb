package com.itheima.web.Response;

import org.apache.commons.io.IOUtils;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
/*
Response响应 字节 数据
使用:
    1.通过Response对象获取字符输出流
        PrintWriter writer = resp.getWriter();//请求完毕后response对象会被销毁，流会被自动关闭，不需要手动close
    2.写数据
        //content-type
        response.setHeader("content-type", "text/html");//告诉浏览器相应的数据是html格式的,不写此代码表示纯文本
        writer.write("<h1>aaa</h1>");
    3.注意
        ·该流(write)不需要关闭，随着响应结束，response对象销毁，由服务器关闭
        .中文数据乱码:原因通过Response获取的字符输出流默认编码:ISO-8859-1
        .resp.setContentType("text/html;charset=utf-8");

 */

/**
 * 响应字节数据: 设置字节数据的响应体
 * 页面出现一张图片
 */
@WebServlet("/resp4")
public class ResponseDemo4 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.读取文件
        FileInputStream fis = new FileInputStream("C://ajava//panghu.jpg");

        //2.获取response字节输出流
        ServletOutputStream os = response.getOutputStream();

        //3.完成流的copy
/*        byte[] buff = new byte[1024];
        int len = 0;
        while((len = fis.read(buff)) != -1) {
            os.write(buff,0,len);
        }*/

//        pom.xml中引入IOUtils工具类
        IOUtils.copy(fis,os);
        fis.close();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
