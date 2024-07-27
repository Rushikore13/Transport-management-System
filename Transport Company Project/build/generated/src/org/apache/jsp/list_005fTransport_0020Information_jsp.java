package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.Connection;

public final class list_005fTransport_0020Information_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("       <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>list_Transport Information</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"bootstrap.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       <div class=\"container\">\n");
      out.write("\n");
      out.write("            <table class=\"table table-bordered\">\n");
      out.write("                <thead>\n");
      out.write("                    <tr>\n");
      out.write("                        <th scope=\"col\">#</th>\n");
      out.write("                        <th scope=\"col\">Unique Slip No</th>\n");
      out.write("                        <th scope=\"col\">Vehicle No</th>\n");
      out.write("                        <th scope=\"col\">Model</th>\n");
      out.write("                        <th scope=\"col\">Units</th>\n");
      out.write("                        <th scope=\"col\">Destination</th>\n");
      out.write("                        <th scope=\"col\">Contact</th>\n");
      out.write("                        <th scope=\"col\">Trip Starting Date</th>\n");
      out.write("                        <th scope=\"col\">Trip Ending Date</th>\n");
      out.write("                        <th scope=\"col\">Driver Name</th>\n");
      out.write("                        <th scope=\"col\">Customer Name</th>\n");
      out.write("                        <th scope=\"col\">Customer Address</th>\n");
      out.write("                        <th scope=\"col\">Amount</th>\n");
      out.write("                    </tr>\n");
      out.write("                </thead>\n");
      out.write("\n");
      out.write("                ");

                    Connection cn = null;
                    Statement st = null;
                    int counter = 1;


                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/transport_company_project", "root", "root");
                        st = cn.createStatement();
                        String sql = "select * from Manage_Vehicle";

                        ResultSet rs = st.executeQuery(sql);
                        while (rs.next()) {
                
      out.write("\n");
      out.write("                <tbody>\n");
      out.write("                    <tr>\n");
      out.write("                        <th scope=\"row\">");
      out.print(counter++);
      out.write("</th>\n");
      out.write("                        <td>");
      out.print(rs.getString("uni_Slip_No"));
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(rs.getString("Vehicle_No"));
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(rs.getString("Model"));
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(rs.getString("Units"));
      out.write("</td> \n");
      out.write("                        <td>");
      out.print(rs.getString("Destination"));
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(rs.getString("Contact"));
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(rs.getString("Trip_Starting_Date"));
      out.write("</td>\n");
      out.write("                         <td>");
      out.print(rs.getString("Trip_Ending_Date"));
      out.write("</td>\n");
      out.write("                          <td>");
      out.print(rs.getString("Driver_Name"));
      out.write("</td>\n");
      out.write("                           <td>");
      out.print(rs.getString("Cust_Name"));
      out.write("</td>\n");
      out.write("                           <td>");
      out.print(rs.getString("Cust_Address"));
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(rs.getString("Amount"));
      out.write("</td>\n");
      out.write("                        \n");
      out.write("                    </tr>\n");
      out.write("\n");
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
