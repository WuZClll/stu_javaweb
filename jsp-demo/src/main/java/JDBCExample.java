import java.sql.*;

public class JDBCExample {
    public static void main(String[] args) {
        //1.注册数据库驱动
//        1、反射加载驱动
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
//        2、加载用户信息和urlAQ
            //如果是本机且端口号为3306则可以简写为：↓
            String url = "jdbc:mysql:///jsp_db";
            String userName = "root";
            String passWord = "123456";
            Connection co = DriverManager.getConnection(url, userName, passWord);//连接
//        3、连接成功，获取数据库对象 Statement对象在数据库上执行MySQL语句
            //方法1
            Statement st = co.createStatement();//语法
            //方法2 获取预编译（事务）的SQL对象：防止SQL注入
//            co.prepareStatement();
            //方法3 执行存储过程的对象 CallableStatement prepare Call（sql）
//        4、引用对象,执行数据局操作
            String sql = "select * from users";
            ResultSet rs = st.executeQuery(sql);//查询 //结果集
            while (rs.next()) {
                String name = rs.getString(2);
                String pass = rs.getString(3);
                String email = rs.getString(4);
                System.out.println(name + "   |    " + pass + "    |   " + email);
            }
            //        5、逆序释放对象和驱动
            if (rs != null) {
                rs.close();
            }
            if (st != null) {
                st.close();
            }
            if (co != null) {
                co.close();
            }
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
