package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class UserLogin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>User Login Page</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"bootstrap.css\">\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("            .container\n");
      out.write("            {\n");
      out.write("                opacity: 0.8;\n");
      out.write("                margin-top: 60px;\n");
      out.write("                background-color: white;  /* fallback for old browsers */\n");
      out.write("                height: 630px;\n");
      out.write("                width: 1300px;\n");
      out.write("                box-shadow: 2px 10px 8px 10px black;\n");
      out.write("\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            span\n");
      out.write("            {\n");
      out.write("                color: black;\n");
      out.write("                font-size: medium;\n");
      out.write("                display: flex;\n");
      out.write("                justify-content :center;\n");
      out.write("                padding-top: 40px;\n");
      out.write("            }\n");
      out.write("            header\n");
      out.write("            {\n");
      out.write("                color: black;\n");
      out.write("                font-size: 30px;\n");
      out.write("                display: flex;\n");
      out.write("                justify-content :center;\n");
      out.write("                padding-top: 50px;\n");
      out.write("                font-family: Cooper Black;\n");
      out.write("            }\n");
      out.write("            .button\n");
      out.write("            {\n");
      out.write("                display: flex;\n");
      out.write("                flex-direction :row;\n");
      out.write("                justify-content :space-between;\n");
      out.write("                font-size: small;\n");
      out.write("                color: black;\n");
      out.write("                margin-top: 10px;\n");
      out.write("            }\n");
      out.write("            input[type=submit]\n");
      out.write("            {\n");
      out.write("                cursor: pointer;\n");
      out.write("                width: 45%;\n");
      out.write("            }\n");
      out.write("            img\n");
      out.write("            {\n");
      out.write("                margin-right: 100px;\n");
      out.write("                box-shadow: 2px 10px 8px 20px white;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            body\n");
      out.write("            {\n");
      out.write("                color: black;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <form action=\"User_Login\" method=\"POST\">\n");
      out.write("            <script src=\"validation.js\"></script>\n");
      out.write("\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"box\">\n");
      out.write("\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-sm-7\">\n");
      out.write("                            <img src=\"Project Images/user_login.jpg\" height=\"630px;\" width=\"630px\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-sm-4\">\n");
      out.write("                            <span>Have An Account..? <label>  <a href=\"user signup.jsp\">  Sign Up</a></label></span>\n");
      out.write("                            <header>Log In</header><br>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Email :</label><br>\n");
      out.write("                                <input type=\"email\" required class=\"form-control\" name=\"email\" placeholder=\"Enter Your Email\">\n");
      out.write("                            </div>\n");
      out.write("                            <br>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Password :</label>\n");
      out.write("                                <input type=\"Password\" required name=\"pass\" class=\"form-control\" placeholder=\"**********\">\n");
      out.write("                            </div>\n");
      out.write("                            <br>\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-sm-2\"></div>\n");
      out.write("                                <div class=\"col-sm-8\">\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <input type=\"submit\" name=\"btn\" class=\"btn btn-info\" value=\"Login\">\n");
      out.write("                                        <input type=\"submit\" name=\"btn\" class=\"btn btn-info\" value=\" Cancel\">\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"button\" >\n");
      out.write("                                <div class=\"left\">\n");
      out.write("                                    <input type=\"checkbox\" id=\"check\">\n");
      out.write("                                    <label for=\"check\">Remember Me</label>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"right\">\n");
      out.write("                                    <label><a href=\"Forgot Password.jsp\">Forgot Password</a></label>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
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
