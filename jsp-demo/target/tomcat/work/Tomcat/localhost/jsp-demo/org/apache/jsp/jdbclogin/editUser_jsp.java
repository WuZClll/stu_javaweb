/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2022-09-29 09:58:58 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.jdbclogin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class editUser_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("    <title>修改用户信息</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");

    //接收传递过来的id
    String id = request.getParameter("id");
    int i = 0;
    if (id != null) {
        i = Integer.parseInt(id);
    }
    //访问数据库
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    String url = "jdbc:mysql:///jsp_db";
    String username = "root";
    String password = "123456";
    Class.forName("com.mysql.cj.jdbc.Driver");
    conn = DriverManager.getConnection(url, username, password);
    String sql = "select * from users where id = ?";
    pstmt = conn.prepareStatement(sql);
    pstmt.setInt(1, i);
    rs = pstmt.executeQuery();
    if (rs.next()) {


      out.write("\r\n");
      out.write("<h2>用户信息</h2>\r\n");
      out.write("<form action=\"doUpdate.jsp\" method=\"post\">");
      out.write("\r\n");
      out.write("    用户名&nbsp;&nbsp;： <input type=\"text\" name=\"username\" value=\"");
      out.print(rs.getString("name"));
      out.write("\" placeholder=\"请输入用户名\"><br>\r\n");
      out.write("    密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：<input type=\"password\" name=\"password\" value=\"");
      out.print(rs.getString("password"));
      out.write("\"><br>\r\n");
      out.write("    确认密码：<input type=\"password\" id=\"\"><br>\r\n");
      out.write("    邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱：<input type=\"text\" name=\"email\" value=\"");
      out.print(rs.getString("email"));
      out.write("\"><br>\r\n");
      out.write("    <input type=\"submit\" value=\"确认修改\">&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("    <input type=\"reset\" value=\"重新输入\">\r\n");
      out.write("</form>\r\n");

    }
/*    if (rs != null) {
        try {
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    if (pstmt != null) {
        try {
            pstmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    if (conn != null) {
        try {
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }*/

      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
