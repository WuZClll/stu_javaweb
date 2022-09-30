package com.itheima.web;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

/**
 * 演示POST 浏览器和tomcat编解码过程
 * Tomcat 8.0之后，已将GET请求乱码问题解决，设置默认的解码方式为UTF-8
 */
public class URLDemo {
    public static void main(String[] args) throws UnsupportedEncodingException {
        String username = "张三";

        //1.URL编码（浏览器）
        String encode = URLEncoder.encode(username, "UTF-8");
        System.out.println(encode);//%E5%BC%A0%E4%B8%89

        //2.URL解码(tomcat)
        String decode = URLDecoder.decode(encode, "ISO-8859-1");
        System.out.println(decode);//å¼ ä¸

/*        //不能修改tomcat编码
        String decode1 = URLDecoder.decode(encode, "utf-8");
        System.out.println(decode1);//张三*/

        //3.转换为字节数据， 编码
        byte[] bytes = decode.getBytes("ISO-8859-1");
        for (byte b :
                bytes) {
            System.out.print(b + " ");
        }//-27 -68 -96 -28 -72 -119 (二进制数转为十进制了，底层是二进制)
        System.out.println();
        //4.将字节数组转为字符串， 解码
        String s = new String(bytes, "utf-8");
        System.out.println(s);//张三
    }
}
