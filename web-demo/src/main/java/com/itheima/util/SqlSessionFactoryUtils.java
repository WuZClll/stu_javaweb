package com.itheima.util;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;

/*
代码优化
        创建SqISessionFactory代码优化
    //2.1获取SqlSessionFactory对象
        string resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        sqlSessionFactory sqlSessionFactory = new sqlSessionFactoryBuilder().build(inputStream);
    问题:
        1．代码重复:工具类
        2. SqlSessionFactory 工厂只创建一次，不要重复创建︰静态代码块
*/
//工具类
public class SqlSessionFactoryUtils {
    private static SqlSessionFactory sqlSessionFactory;
    static {
        //静态代码块会随着类加载而自动执行，且只执行一次
        //2.1获取SqlSessionFactory对象（从MyBatis官网复制）
        try {
            String resource = "mybatis-config.xml";//它在resources根目录下
            InputStream inputStream = Resources.getResourceAsStream(resource);
            sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

    }
    public static SqlSessionFactory getSqlSessionFactory(){
        return sqlSessionFactory;
    }
}
