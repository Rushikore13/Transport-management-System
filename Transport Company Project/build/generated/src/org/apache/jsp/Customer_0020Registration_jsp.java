package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.Connection;

public final class Customer_0020Registration_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        \n");
      out.write("        \n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <title>Customer Registration </title>\n");
      out.write("                <link rel=\"stylesheet\" href=\"bootstrap.css\">\n");
      out.write("                <style type=\"text/css\">\n");
      out.write("                    \n");
      out.write("             body\n");
      out.write("         {\n");
      out.write("             background-image: url(\"Project Images/customer.jpg\");\n");
      out.write("             background-size: cover;\n");
      out.write("             margin-top: 110px;\n");
      out.write("         }\n");
      out.write("         .container\n");
      out.write("         {\n");
      out.write("             background-color:white;\n");
      out.write("             border: 3px  solid black;\n");
      out.write("             opacity: 0.8;\n");
      out.write("             height: 500px;\n");
      out.write("             width: 1000px;\n");
      out.write("             font-size: 14px;\n");
      out.write("             \n");
      out.write("         }\n");
      out.write("          \n");
      out.write("          h1\n");
      out.write("          {\n");
      out.write("              color:black;\n");
      out.write("          }\n");
      out.write("           .btn-success\n");
      out.write("            {\n");
      out.write("                color: gray;\n");
      out.write("                text-align: center;\n");
      out.write("                display: inline;\n");
      out.write("                font-size: 14px;\n");
      out.write("                border-radius:1px; \n");
      out.write("              \n");
      out.write("         \n");
      out.write("            }\n");
      out.write("            input[type=submit]\n");
      out.write("               {\n");
      out.write("                   color: black;\n");
      out.write("                   cursor: pointer;\n");
      out.write("                   width: 20%;\n");
      out.write("               }\n");
      out.write("               .btn-danger{\n");
      out.write("                   width: 20%;\n");
      out.write("               }\n");
      out.write("              \n");
      out.write("                        </style>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <body>  \n");
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
      out.write("        <br>\n");
      out.write("        ");

        Connection cn=null;
            Statement st=null;
            String id="1";
            try
        {
         Class.forName("com.mysql.jdbc.Driver");
         cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_transport_system","root","root");
         st=cn.createStatement();
         String sql="select Cust_Id from  customer_registration";
         ResultSet rs= st.executeQuery(sql);
         while(rs.next())
         { 
           id=String.valueOf(Integer.parseInt(rs.getString("Cust_Id"))+1);
         }
        
        }catch(Exception ex)
        {
          out.println(ex);
        } 
    
      out.write("\n");
      out.write("        <form action=\"CustomerRegistration\" method=\"POST\">\n");
      out.write("            \n");
      out.write("        <script src=\"validation.js\"></script>\n");
      out.write("            <div class=\"container\">\n");
      out.write("            <center><h1> Customer Registration</h1> </center>\n");
      out.write("            \n");
      out.write("            <br><br>\n");
      out.write("            \n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div  class=\"col-sm-2\"></div>\n");
      out.write("                <div class=\"col-sm-4\">\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label>Customer Id :</label>\n");
      out.write("                        <input type=\"Number\" placeholder=\"Enter Your Id\" class=\"form-control\" name=\"no\" value=\"");
      out.print(id);
      out.write("\" onkeypress=\"javascript:return isNumber(event)\" required>\n");
      out.write("                    </div>  \n");
      out.write("                     <div class=\"form-group\">\n");
      out.write("                        <label>First Name :</label>\n");
      out.write("                        <input type=\"text\" placeholder=\"Enter Your Name\" class=\"form-control\" name=\"fname\" onkeypress=\"javascript:return isString(event)\" required>\n");
      out.write("                    </div> \n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label>Last Name :</label>\n");
      out.write("                        <input type=\"text\" placeholder=\"Enter Your Name\" class=\"form-control\" name=\"lname\" onkeypress=\"javascript:return isString(event)\" required>\n");
      out.write("                    </div> \n");
      out.write("                   \n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"col-sm-4\">\n");
      out.write("                     \n");
      out.write("                     <div class=\"form-group\">\n");
      out.write("                        <label>Email :</label>\n");
      out.write("                        <input type=\"Email\" placeholder=\"Enter Your Email\" class=\"form-control\" name=\"email\" required>\n");
      out.write("                    </div>  \n");
      out.write("                      <div class=\"form-group\">\n");
      out.write("                        <label>Contact :</label>\n");
      out.write("                        <input type=\"text\" placeholder=\"Enter Mobile Number\" class=\"form-control\" name=\"cno\" onkeypress=\"javascript:return isContactno(event)\" maxlength=\"10\" required>\n");
      out.write("                    </div> \n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label>Address :</label>\n");
      out.write("                        <textarea name=\"address\" class=\"form-control\" placeholder=\"Enter Address\" rows=\"2\" cols=\"20\" required></textarea>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <br><br>\n");
      out.write("            \n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    <div class=\"col-sm-4\"></div>\n");
      out.write("                <div class=\"col-sm-8\">\n");
      out.write("                    \n");
      out.write("                        <input type=\"submit\"class=\"btn btn-info\" name=\"btn\" value=\"Register\">&nbsp&nbsp&nbsp&nbsp&nbsp\n");
      out.write("                     <a href=\"index.html\" class=\"btn btn-danger\">Cancel</a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            </div>\n");
      out.write("      \n");
      out.write("        </form>\n");
      out.write("    </body>\n");
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
