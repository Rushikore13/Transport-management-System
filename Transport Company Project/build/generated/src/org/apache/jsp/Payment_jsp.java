package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class Payment_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\" />\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" />\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n");
      out.write("\n");
      out.write("        <title>Payment Form</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"style.css\" />\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\" />\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin />\n");
      out.write("        <link\n");
      out.write("            href=\"https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap\"\n");
      out.write("            rel=\"stylesheet\"\n");
      out.write("            />\n");
      out.write("        <style>\n");
      out.write("            body\n");
      out.write("            {\n");
      out.write("                margin-bottom: 30px;\n");
      out.write("                padding: 0;\n");
      out.write("                background-color: #22283e;\n");
      out.write("                font-family: 'Roboto', sans-serif;\n");
      out.write("                background-image: url(\"Project Images/payment.jpg\");\n");
      out.write("                background-size: cover;\n");
      out.write("\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            form{\n");
      out.write("                margin-top: 10px;\n");
      out.write("                margin-left: 420px;\n");
      out.write("                width: 600px;\n");
      out.write("                padding:  20px;\n");
      out.write("                background-color: #30475e;\n");
      out.write("                opacity: 0.8;\n");
      out.write("                box-shadow: 2px 10px 8px 10px #6D7B8D;\n");
      out.write("                color: #fff;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            h1{\n");
      out.write("                text-align: center;\n");
      out.write("            }\n");
      out.write("            .box1{\n");
      out.write("                width: 100%;\n");
      out.write("                padding: 10px;\n");
      out.write("                border: none;\n");
      out.write("                border-radius: 15px;\n");
      out.write("                box-sizing: border-box;\n");
      out.write("                margin: 10px 0 15px 0;\n");
      out.write("                background-color: white;\n");
      out.write("                color: black;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            .box2{\n");
      out.write("                padding: 10px;\n");
      out.write("                border: none;\n");
      out.write("                border-radius: 15px;\n");
      out.write("                margin: 10px 0 15px 0;\n");
      out.write("                background-color: white;\n");
      out.write("                color: black;\n");
      out.write("            }\n");
      out.write("            .box3{\n");
      out.write("\n");
      out.write("                cursor: pointer;\n");
      out.write("                margin-left: 120px;\n");
      out.write("                width: 90px;\n");
      out.write("                padding: 10px;\n");
      out.write("                border: none;\n");
      out.write("                border-radius: 15px;\n");
      out.write("                background-color: white;\n");
      out.write("                font-size: 13px;\n");
      out.write("                color: black;\n");
      out.write("            }\n");
      out.write("            .box4\n");
      out.write("            {\n");
      out.write("              cursor: pointer;\n");
      out.write("                margin-left: 120px;\n");
      out.write("                width: 10px;\n");
      out.write("                padding: 10px;\n");
      out.write("                border: none;\n");
      out.write("                border-radius: 15px;\n");
      out.write("                background-color: white;\n");
      out.write("                font-size: 13px;\n");
      out.write("                color: black;  \n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            .div1{\n");
      out.write("                display:inline-block ;\n");
      out.write("            }\n");
      out.write("           \n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
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
      out.write("        ");

            Connection cn = null;
            Statement st = null;
            String id = "1";
            try {
                Class.forName("com.mysql.jdbc.Driver");
                cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_transport_system", "root", "root");
                st = cn.createStatement();
                String sql = "select payer_id from payment";
                ResultSet rs = st.executeQuery(sql);
                while (rs.next()) {
                    id = String.valueOf(Integer.parseInt(rs.getString("payer_id")) + 1);
                }

            } catch (Exception ex) {
                out.println(ex);
            }
        
      out.write("\n");
      out.write("        <script src=\"validation.js\"></script>\n");
      out.write("        <form action=\"Payment\" method=\"POST\">\n");
      out.write("            <h1>Payment Form</h1>\n");
      out.write("            <label for=\"Form\">Payer Id :</label><br />\n");
      out.write("            <input\n");
      out.write("                class=\"box1\"\n");
      out.write("                type=\"number\"\n");
      out.write("                name=\"id\"\n");
      out.write("                id=\"id\"\n");
      out.write("                required\n");
      out.write("                placeholder=\"Enter Your Id\"\n");
      out.write("                value=\"");
      out.print(session.getAttribute("User_Id"));
      out.write("\" \n");
      out.write("                onkeypress=\"javascript:return isNumber(event)\"\n");
      out.write("                /><br />\n");
      out.write("            <label for=\"Form\">Payer Name :</label><br />\n");
      out.write("            <input\n");
      out.write("                class=\"box1\"\n");
      out.write("                type=\"text\"\n");
      out.write("                required\n");
      out.write("                name=\"name\"\n");
      out.write("                id=\"id\"\n");
      out.write("                placeholder=\"Enter Your Name\"\n");
      out.write("               value=\"");
      out.print(session.getAttribute("Cname"));
      out.write("\"               \n");
      out.write("              onkeypress=\"javascript:return isString(event)\"\n");
      out.write("                /><br />\n");
      out.write("            <label for=\"email\">Email :</label> <br />\n");
      out.write("            <input\n");
      out.write("                class=\"box1\"\n");
      out.write("                type=\"email\"\n");
      out.write("                name=\"email\"\n");
      out.write("                required\n");
      out.write("                id=\"email\"\n");
      out.write("                \n");
      out.write("                placeholder=\"Enter Email\"\n");
      out.write("                /><br />\n");
      out.write("\n");
      out.write("\n");
      out.write("            <label for=\"card number\"> Card Number :</label><br />\n");
      out.write("            <input\n");
      out.write("                class=\"box1\"\n");
      out.write("                required\n");
      out.write("                type=\"number\"\n");
      out.write("                name=\"cardno\"\n");
      out.write("                id=\"cardno\"\n");
      out.write("                placeholder=\"1234 1234 1234\"\n");
      out.write("                onkeypress=\"javascript:return isNumber(event)\"\n");
      out.write("                maxlength=\"12\"\n");
      out.write("                /><br />\n");
      out.write("            &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp \n");
      out.write("            <div class=\"div1\">\n");
      out.write("                <label for=\"cvv\"> Enter Amount :</label><br />\n");
      out.write("                <input\n");
      out.write("                    class=\"box2\"\n");
      out.write("                    required\n");
      out.write("                    type=\"number\"\n");
      out.write("                    name=\"amount\"\n");
      out.write("                    id=\"amount\"\n");
      out.write("                    placeholder=\"amount\"\n");
      out.write("                 value=\"");
      out.print(session.getAttribute("Tbill"));
      out.write("\"\n");
      out.write("                    onkeypress=\"javascript:return isNumber(event)\"\n");
      out.write("                    /><br /> \n");
      out.write("            </div>\n");
      out.write("            &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp\n");
      out.write("            &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp \n");
      out.write("            <div class=\"div1\">\n");
      out.write("                <label for=\"cvv\"> Enter CVV :</label><br />\n");
      out.write("                <input\n");
      out.write("                    class=\"box2\"\n");
      out.write("                    required\n");
      out.write("                    type=\"number\"\n");
      out.write("                    name=\"cvv\"\n");
      out.write("                    id=\"cvv\"\n");
      out.write("                    placeholder=\"cvv\"\n");
      out.write("                    onkeypress=\"javascript:return isNumber(event)\"\n");
      out.write("                    /><br />\n");
      out.write("            </div>\n");
      out.write("            <br><br>\n");
      out.write("            <input class=\"box3\" type=\"submit\" name=\"btn\" value=\"Pay Now\">\n");
      out.write("            <a href=\"newpayment.jsp\" class=\"box4\">Close</a>\n");
      out.write("\n");
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
