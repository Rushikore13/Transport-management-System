package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.Connection;

public final class list_005fBranch_0020Manager_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

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
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"bootstrap.css\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("\n");
      out.write("            <table class=\"table table-bordered\">\n");
      out.write("                <thead>\n");
      out.write("                    <tr>\n");
      out.write("                        <th scope=\"col\">#</th>\n");
      out.write("                        <th scope=\"col\">Manager Name</th>\n");
      out.write("                        <th scope=\"col\">Branch Name</th>\n");
      out.write("                        <th scope=\"col\">Address</th>\n");
      out.write("                        <th scope=\"col\">Email</th>\n");
      out.write("                        <th scope=\"col\">Contact</th>\n");
      out.write("                    </tr>\n");
      out.write("                </thead>\n");
      out.write("<tbody>\n");
      out.write("                ");

                    Connection cn = null;
                    Statement st = null;
                    int counter = 1;


                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Online_transport_system", "root", "root");
                        st = cn.createStatement();
                        String sql = "select * from branch_manager";

                        ResultSet rs = st.executeQuery(sql);
                        while (rs.next()) {
                
      out.write("\n");
      out.write("                \n");
      out.write("                    <tr>\n");
      out.write("                        <form action=\"update branch manager.jsp\" method=\"post\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <th scope=\"row\">");
      out.print(counter++);
      out.write("</th>\n");
      out.write("                        <input type=\"hidden\" name=\"Manager_Id\" value=\"");
      out.print(rs.getString("Manager_Id"));
      out.write("\">\n");
      out.write("                        <td>");
      out.print(rs.getString("Manager_Name"));
      out.write("</td>\n");
      out.write("                        <input type=\"hidden\" name=\"Manager_Name\" value=\"");
      out.print(rs.getString("Manager_Name"));
      out.write("\">\n");
      out.write("                        <td>");
      out.print(rs.getString("Branch_Name"));
      out.write("</td>\n");
      out.write("                         <input type=\"hidden\" name=\"Branch_Name\" value=\"");
      out.print(rs.getString("Branch_Name"));
      out.write("\">\n");
      out.write("                       \n");
      out.write("                        <td>");
      out.print(rs.getString("Address"));
      out.write("</td>\n");
      out.write("                         <input type=\"hidden\" name=\"Address\" value=\"");
      out.print(rs.getString("Address"));
      out.write("\">\n");
      out.write("                       \n");
      out.write("                        <td>");
      out.print(rs.getString("Email"));
      out.write("</td> \n");
      out.write("                         <input type=\"hidden\" name=\"Email\" value=\"");
      out.print(rs.getString("Email"));
      out.write("\">\n");
      out.write("                       \n");
      out.write("                        <td>");
      out.print(rs.getString("Contact"));
      out.write("</td>\n");
      out.write("                        <input type=\"hidden\" name=\"Contact\" value=\"");
      out.print(rs.getString("Contact"));
      out.write("\">\n");
      out.write("\n");
      out.write("                        <td><input type=\"submit\" name=\"btn\" value=\"Update\" class=\"btn btn-success\"></td>\n");
      out.write("                        <td><input type=\"submit\" name=\"btn\" value=\"Delete\" class=\"btn btn-danger\"></td>\n");
      out.write("                        </form>\n");
      out.write("                    </tr>\n");
      out.write("\n");
      out.write("                    ");

                            }
                        } catch (Exception ex) {
                        }


                    
      out.write("\n");
      out.write("                </tbody>\n");
      out.write("\n");
      out.write("            </table>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
