package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import static java.lang.System.out;

public class DBUtil {
    private static String url = "jdbc:mysql:///jsp_db";
    private static String userName = "root";
    private static String passWord = "123456";
    private static Connection conn = null;

    //创建连接
    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, userName, passWord);
        } catch (ClassNotFoundException e) {
            out.println("驱动加载失败~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }
    public static void close() {
        try {
            conn.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
