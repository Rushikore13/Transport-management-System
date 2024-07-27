package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admin_0020header_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"bootstrap.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\">\n");
      out.write("<link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.8.1/css/all.css\" integrity=\"sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf\" crossorigin=\"anonymous\">\n");
      out.write("<link href=\"https://fonts.googleapis.com/css2?family=Rubik:wght@500&display=swap\" rel=\"stylesheet\">\n");
      out.write("    <style type=\"text/css\">\n");
      out.write("       \n");
      out.write(".top-bar .nav-item {\n");
      out.write("      display: inline-block;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    nav {\n");
      out.write("      padding: px;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    nav.top-bar-wrap {\n");
      out.write("      background: #ffb66c;\n");
      out.write("      font-size: 14px;\n");
      out.write("      font-family: Times New Roman,sans-serif;\n");
      out.write("      \n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    .top-bar-wrap {\n");
      out.write("      height: 80px;\n");
      out.write("      \n");
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
      out.write("      font-size: 1 rem\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    nav.top-bar-wrap ul,\n");
      out.write("    nav.main-nav-wrap ul {\n");
      out.write("      margin-bottom: 0px;\n");
      out.write("      margin-top: 0px\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    a.nav-link:hover {\n");
      out.write("      background: skyblue;\n");
      out.write("      color:black;\n");
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
      out.write("      padding-left: 2px;\n");
      out.write("      padding-right: 2px;\n");
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
      out.write("      right: -30px;\n");
      out.write("      padding-right: 70px;\n");
      out.write("      background: #ffb66c;\n");
      out.write("      border-left: 3px solid #6c4013;\n");
      out.write("    }\n");
      out.write("     \n");
      out.write("    </style>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    \n");
      out.write("<div role=\"navigation\">\n");
      out.write("      <div class=\"\">\n");
      out.write("        <div class=\"brand-logo\">\n");
      out.write("            <a href=\"\"><img src=\"images/b2.jpg\" /></a>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"brand-phone\">\n");
      out.write("          <a href=\"#\"><i class=\"fa fa-phone me-3\"></i>8483827650</a>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"text-center\">\n");
      out.write("          <nav class=\"top-bar-wrap\">\n");
      out.write("            <ul class=\"top-bar\">\n");
      out.write("              <li class=\"nav-item\">\n");
      out.write("                <a href=\"index.html\" class=\"nav-link\"><span class=\"inner-link\">Home</span></a>\n");
      out.write("              </li>\n");
      out.write("              <li class=\"nav-item\">\n");
      out.write("                <a href=\"Driver Registration.jsp\" class=\"nav-link\"><span class=\"inner-link\">Driver Registration</span></a>\n");
      out.write("              </li>\n");
      out.write("              <li class=\"nav-item\">\n");
      out.write("                <a href=\"list_driver registration admin.jsp\" class=\"nav-link\"><span class=\"inner-link\">view Driver Details</span></a>\n");
      out.write("              </li>\n");
      out.write("              <li class=\"nav-item\">\n");
      out.write("                <a href=\"Branch Manager.jsp\" class=\"nav-link\"><span class=\"inner-link\">Branch Manager</span></a>\n");
      out.write("              </li>\n");
      out.write("               <li class=\"nav-item\">\n");
      out.write("                <a href=\"list_Branch Manager.jsp\" class=\"nav-link\"><span class=\"inner-link\">View Manager Details</span></a>\n");
      out.write("              </li>\n");
      out.write("               <li class=\"nav-item\">\n");
      out.write("                <a href=\"Manage Vehicle.jsp\" class=\"nav-link\"><span class=\"inner-link\"> Manage Vehicles</span></a>\n");
      out.write("              </li>\n");
      out.write("               \n");
      out.write("               \n");
      out.write("              <br>\n");
      out.write("              \n");
      out.write("              <li class=\"nav-item\">\n");
      out.write("                <a href=\"list_admin_manage vehicle.jsp\" class=\"nav-link\"><span class=\"inner-link\">Vehicles Details </span></a>\n");
      out.write("              </li>\n");
      out.write("              <li class=\"nav-item\">\n");
      out.write("                <a href=\"Transport Information.jsp\" class=\"nav-link\"><span class=\"inner-link\"> Transport Information</span></a>\n");
      out.write("              </li>\n");
      out.write("               <li class=\"nav-item\">\n");
      out.write("                <a href=\"list_booking admin.jsp\" class=\"nav-link\"><span class=\"inner-link\">View bookings</span></a>\n");
      out.write("              </li>\n");
      out.write("              \n");
      out.write("              <li class=\"nav-item\">\n");
      out.write("                <a href=\"list_feedback.jsp\" class=\"nav-link\"><span class=\"inner-link\">View Feedbacks</span></a>\n");
      out.write("              </li>\n");
      out.write("              <li class=\"nav-item\">\n");
      out.write("                <a href=\"list_query.jsp\" class=\"nav-link\"><span class=\"inner-link\">View Queries</span></a>\n");
      out.write("              </li>\n");
      out.write("              <li class=\"nav-item\">\n");
      out.write("                  <a href=\"report.jsp\" class=\"nav-link\"><span class=\"inner-link\">Report</span></a>\n");
      out.write("              </li>\n");
      out.write("              <li class=\"nav-item\">\n");
      out.write("                <a href=\"index.html\" class=\"nav-link\"><span class=\"inner-link\">LogOut</span></a>\n");
      out.write("              </li>\n");
      out.write("              \n");
      out.write("              \n");
      out.write("            </ul>\n");
      out.write("          </nav>\n");
      out.write("          <nav class=\"main-nav-wrap\">\n");
      out.write("            <ul class=\"main-nav\">\n");
      out.write("              \n");
      out.write("            </ul>\n");
      out.write("          </nav>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
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
