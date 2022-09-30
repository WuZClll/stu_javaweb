package com.itheima.web;

import com.itheima.mapper.UserMapper;
import com.itheima.pojo.User;
import com.itheima.util.SqlSessionFactoryUtils;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.InputStream;

@WebServlet("/registerServlet")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.接收用户数据
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        //封装用户对象
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);

        //2调用mapper 根据用户名查询用户对象
/*
        //2.1获取SqlSessionFactory对象（从MyBatis官网复制）
        String resource = "mybatis-config.xml";//它在resources根目录下
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
*/
        //使用工具类
        SqlSessionFactory sqlSessionFactory = SqlSessionFactoryUtils.getSqlSessionFactory();

        //2.2获取SqlSession对象
        SqlSession sqlSession = sqlSessionFactory.openSession();

        //2.3获取Mapper
        UserMapper userMapper = sqlSession.getMapper(UserMapper.class);

        //2.4调用方法
        User u = userMapper.selectByUsername(username);

        //3.判断用户对象是否为null
        if (u == null) {
            //用户名不存在：添加用户
            userMapper.add(user);

            //提交事务
            sqlSession.commit();
            //释放资源 后续没有sql操作
            sqlSession.close();
            response.setContentType("text/html;charset=utf-8");
            response.getWriter().write("注册成功");
        }  else {
            //用户名存在：给出提示
            response.setContentType("text/html;charset=utf-8");
            response.getWriter().write("用户名已存在");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
