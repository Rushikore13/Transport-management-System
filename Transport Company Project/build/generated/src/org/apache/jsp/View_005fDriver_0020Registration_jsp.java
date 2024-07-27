package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.Connection;

public final class View_005fDriver_0020Registration_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/user header.jsp");
  }

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
      out.write("        <title>Driver Details </title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"bootstrap.css\">\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("            .jumbotron\n");
      out.write("            {\n");
      out.write("\n");
      out.write("                height: 300px;\n");
      out.write("                width: 120%;\n");
      out.write("              \n");
      out.write("                margin-left: 30px;\n");
      out.write("                padding-top: 50px;\n");
      out.write("                padding-bottom: 10px;\n");
      out.write("                padding-left: 10px;\n");
      out.write("                padding-right: 5px;\n");
      out.write("                box-shadow: 2px 2px 1px 2px #888888;\n");
      out.write("                border: black 1px solid; \n");
      out.write("            } \n");
      out.write("            input[type=submit]\n");
      out.write("            {\n");
      out.write("                width: 60%;\n");
      out.write("                font-size: 15px;\n");
      out.write("                box-shadow: 4px 4px 2px 4px #888888;\n");
      out.write("            }\n");
      out.write("            .btn-danger\n");
      out.write("            {\n");
      out.write("                                \n");
      out.write("\n");
      out.write("            }\n");
      out.write("            body{\n");
      out.write("                background-color: whitesblmoke;\n");
      out.write("            }\n");
      out.write("            img{\n");
      out.write("                border: black 3px solid; \n");
      out.write("            }\n");
      out.write("            .vehicle\n");
      out.write("            {\n");
      out.write("                width: 35%;\n");
      out.write("                display: inline-block;\n");
      out.write("                margin:60px;\n");
      out.write("                margin-top: 50px;\n");
      out.write("                margin-bottom: 0px;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"bootstrap.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\">\n");
      out.write("<link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.8.1/css/all.css\" integrity=\"sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("    <style type=\"text/css\">\n");
      out.write("       \n");
      out.write(".top-bar .nav-item {\n");
      out.write("      display: inline-block;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    nav {\n");
      out.write("      padding: 10px;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    nav.top-bar-wrap {\n");
      out.write("      background: #ffb66c;\n");
      out.write("      font-size: 14px;\n");
      out.write("      font-family: Times New Roman,sans-serif;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    .top-bar-wrap {\n");
      out.write("      height: 80px;\n");
      out.write("      padding-left: 13px;\n");
      out.write("      line-height: 80px;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    .main-nav-wrap {\n");
      out.write("      height: 80px;\n");
      out.write("      line-height: 90px;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    nav.main-nav-wrap {\n");
      out.write("      background: #7c2222;\n");
      out.write("      font-size: 1.25rem\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    nav.top-bar-wrap ul,\n");
      out.write("    nav.main-nav-wrap ul {\n");
      out.write("      margin-bottom: 0px;\n");
      out.write("      margin-top: 0px\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    a.nav-link:hover {\n");
      out.write("      background: rgba(0, 0, 0, 0.2);\n");
      out.write("      color: black;\n");
      out.write("      border-left: 12px solid rgba(0, 0, 0, 0.3);\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    a.nav-link {\n");
      out.write("      border-left: 12px solid transparent;\n");
      out.write("      border-right: 12px solid transparent;\n");
      out.write("      color: #f9f9f9;\n");
      out.write("      text-transform: uppercase;\n");
      out.write("      font-family: \n");
      out.write("      sans-serif;\n");
      out.write("      transform: skew(-25deg);\n");
      out.write("      transition: all 400ms ease-out\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    a .inner-link {\n");
      out.write("      display: inline-block;\n");
      out.write("      transform: skew(25deg)\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    .nav-link {\n");
      out.write("      padding: 0px;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    .top-bar-wrap a {\n");
      out.write("      padding-left: 12px;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    .main-nav-wrap a {\n");
      out.write("      padding-left: 18px;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    .brand-logo img {\n");
      out.write("      height: 40px;\n");
      out.write("      transform: skew(25deg)\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    .brand-phone a {\n");
      out.write("      display: block;\n");
      out.write("      font-size: 1.25em;\n");
      out.write("      text-decoration: none;\n");
      out.write("      color: #000000;\n");
      out.write("      letter-spacing: 2px;\n");
      out.write("      height: 40px;\n");
      out.write("      line-height: 1.5em;\n");
      out.write("      transform: skew(25deg)\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    .brand-phone,\n");
      out.write("    .brand-logo {\n");
      out.write("      padding: 40px;\n");
      out.write("      position: absolute;\n");
      out.write("      top: 0;\n");
      out.write("      height: 120px;\n");
      out.write("    \n");
      out.write("      transform: skewX(-25deg);\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    .brand-logo {\n");
      out.write("      left: -30px;\n");
      out.write("      padding-left: 70px;\n");
      out.write("      background: #621616;\n");
      out.write("      border-right: 2px solid #ffb66c;\n");
      out.write("    \n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    .brand-phone {\n");
      out.write("      right: 0;\n");
      out.write("      right: -30px;\n");
      out.write("      padding-right: 70px;\n");
      out.write("      background: #ffb66c;\n");
      out.write("      border-left: 3px solid #6c4013;\n");
      out.write("    }\n");
      out.write("     \n");
      out.write("    </style>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <div role=\"navigation\">\n");
      out.write("      <div class=\"\">\n");
      out.write("        <div class=\"brand-logo\">\n");
      out.write("          <a href=\"\"><img src=\"Project Images/booking.png\" /></a>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"brand-phone\">\n");
      out.write("          <a href=\"#\"><i class=\"fa fa-phone me-3\"></i>09860236877</a>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"text-center\">\n");
      out.write("          <nav class=\"top-bar-wrap\">\n");
      out.write("            <ul class=\"top-bar\">\n");
      out.write("              <li class=\"nav-item\">\n");
      out.write("                <a href=\"index.html\" class=\"nav-link\"><span class=\"inner-link\">Home</span></a>\n");
      out.write("              </li>\n");
      out.write("              \n");
      out.write("             \n");
      out.write("               <li class=\"nav-item\">\n");
      out.write("                <a href=\"Feedback.jsp\" class=\"nav-link\"><span class=\"inner-link\"> Feedback</span></a>\n");
      out.write("              </li>\n");
      out.write("               <li class=\"nav-item\">\n");
      out.write("                <a href=\"Query.jsp\" class=\"nav-link\"><span class=\"inner-link\">Quries</span></a>\n");
      out.write("              </li>\n");
      out.write("              <li class=\"nav-item\">\n");
      out.write("                <a href=\"list_booking user.jsp\" class=\"nav-link\"><span class=\"inner-link\">My Bookings</span></a>\n");
      out.write("              </li>\n");
      out.write("              <li class=\"nav-item\">\n");
      out.write("                <a href=\"index.html\" class=\"nav-link\"><span class=\"inner-link\">LogOut</span></a>\n");
      out.write("              </li>\n");
      out.write("              \n");
      out.write("            </ul>\n");
      out.write("          </nav>\n");
      out.write("          <nav class=\"main-nav-wrap\">\n");
      out.write("            <ul class=\"main-nav\">\n");
      out.write("              <li class=\"nav-item\">\n");
      out.write("                <a href=\"#\" class=\"nav-link\"><span class=\"inner-link\"></span></a>\n");
      out.write("              </li>\n");
      out.write("              \n");
      out.write("            </ul>\n");
      out.write("          </nav>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("   </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <br><br>\n");
      out.write("    <center><h1 style=\"font-family:\">Driver Details</h1></center>\n");
      out.write("    ");

        Connection cn = null;
        Statement st = null;
        int counter = 1;
       

        try {
            Class.forName("com.mysql.jdbc.Driver");
            cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_transport_system", "root", "root");
            st = cn.createStatement();
    String sql="select * from driver_registration ";


            ResultSet rs = st.executeQuery(sql);
            while (rs.next()) {
    
      out.write("\n");
      out.write("\n");
      out.write("    <div class=\"vehicle\">\n");
      out.write("        \n");
      out.write("        <form action=\"View_Driver_Registration\" method=\"POST\">\n");
      out.write("\n");
      out.write("        <div class=\"jumbotron\" style=\"background-color: skyblue\">\n");
      out.write("<!--            <form action=\"list_Manage vehicle.jsp\" method=\"POST\">-->\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-sm-7\">\n");
      out.write("\n");
      out.write("                        <img src=\"");
      out.print(rs.getString("photo"));
      out.write("\" width=\"300px\" height=\"150px\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-sm-5\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <h4>Driver Id  : ");
      out.print(rs.getString("Driver_Id"));
      out.write("</h4>\n");
      out.write("                    <input type=\"hidden\" name=\"driver_id\" value=\"");
      out.print(rs.getString("Driver_Id"));
      out.write("\">\n");
      out.write("\n");
      out.write("                        <h4> Driver Name : ");
      out.print(rs.getString("Driver_Name"));
      out.write("</h4>\n");
      out.write("                         <input type=\"hidden\" name=\"driver_name\" value=\"");
      out.print(rs.getString("Driver_Name"));
      out.write("\">\n");
      out.write("\n");
      out.write("                        \n");
      out.write("                        <h4> Contact : ");
      out.print(rs.getString("Contact"));
      out.write("</h4>\n");
      out.write("                        \n");
      out.write("                        <h4> Experience : ");
      out.print(rs.getString("Experience"));
      out.write("</h4>\n");
      out.write("                        \n");
      out.write("                        <h4> Licence No : ");
      out.print(rs.getString("Licence_No"));
      out.write("</h4>\n");
      out.write("                    <input type=\"hidden\" name=\"licence_no\" value=\"");
      out.print(rs.getString("Licence_No"));
      out.write("\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div><br>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-sm-3\"></div>\n");
      out.write("                    <div class=\"col-sm-4\">\n");
      out.write("                        <input type=\"submit\" class=\"btn btn-success\" name=\"btn1\" onClick=\"parent.location='list_Manage vehicle.jsp'\" value=\"Select\">\n");
      out.write("                        \n");
      out.write("                        </div>\n");
      out.write("                    <div class=\"col-sm-4\">\n");
      out.write("\n");
      out.write("                            <a href=\"index.html \" class=\"btn btn-danger\" style=\"font-weight: 1200x; width: 60%;\n");
      out.write("              font-size: 14px;\n");
      out.write("                 box-shadow: 4px 4px 2px 4px #888888;\">Cancel</a>\n");
      out.write("                        </div>    \n");
      out.write("                    <div class=\"col-sm-3\"></div>\n");
      out.write("                </div>\n");
      out.write("<!--            </form>-->\n");
      out.write("        </div>\n");
      out.write("        </form>\n");
      out.write("    </div>         \n");
      out.write("    ");

            }
        } catch (Exception ex) {
            out.println(ex.toString());
        }


    
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
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
