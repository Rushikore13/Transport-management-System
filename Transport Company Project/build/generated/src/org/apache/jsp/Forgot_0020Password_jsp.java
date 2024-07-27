package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Forgot_0020Password_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<head>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\">\n");
      out.write("  <title>Sign Up/In to SITENAME</title>\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n");
      out.write("  <link rel=\"stylesheet\" href=\"bootstrap.css\">\n");
      out.write("</head>\n");
      out.write("  <style>\n");
      out.write("    body, html {\n");
      out.write("      height: 100%;\n");
      out.write("      background-color: #f9f9f9;\n");
      out.write("      background-size:cover;\n");
      out.write("      background-image: url('LINK TO MY BACKGROUND IMAGE');\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .login-container {\n");
      out.write("      position: relative;\n");
      out.write("      height: 100%;\n");
      out.write("\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .login-box {\n");
      out.write("      position: absolute;\n");
      out.write("      top: 50%;\n");
      out.write("      transform: translateY(-50%);\n");
      out.write("      padding: 15px;\n");
      out.write("      background-color: #fff;\n");
      out.write("      box-shadow: 0px 5px 5px #ccc;\n");
      out.write("      border-radius: 5px;\n");
      out.write("      border-top: 1px solid #e9e9e9;\n");
      out.write("      border: 1px solid grey;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .login-header {\n");
      out.write("      text-align: center;\n");
      out.write("      text-size:40px;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .login-header img {\n");
      out.write("      width: 200px;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    .forgot-password {\n");
      out.write("      text-align: right;\n");
      out.write("      float: right;\n");
      out.write("      font-size: 10px\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    #error-message {\n");
      out.write("      display: none;\n");
      out.write("    }\n");
      out.write("  </style>\n");
      out.write("<body>\n");
      out.write("  <div class=\"login-container\">\n");
      out.write("    <div class=\"col-xs-12 col-sm-4 col-sm-offset-4 login-box\">\n");
      out.write("      <div class=\"login-header\">\n");
      out.write("      \t<label for=\"name\"> Forget Password</label>\n");
      out.write("      </div>\n");
      out.write("      <div id=\"error-message\" class=\"alert alert-danger\"></div>\n");
      out.write("      <form action=\"Forgotpassword\" method=\"post\">\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("         <label for=\"name\">Email</label>\n");
      out.write("          <input\n");
      out.write("            type=\"email\"\n");
      out.write("            class=\"form-control\"\n");
      out.write("            id=\"email\"\n");
      out.write("            placeholder=\"Enter your email\" name=\"email\">\n");
      out.write("        </div>\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("          <label for=\"name\">Password</label>\n");
      out.write("          <input\n");
      out.write("            type=\"password\"\n");
      out.write("            class=\"form-control\"\n");
      out.write("            id=\"password\"\n");
      out.write("            placeholder=\"Enter your password\" name=\"password\" title=\"Plz enter valid password like Capital letter,Symbol and 8 charectors and one number\" pattern=\"^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,12}$\">\n");
      out.write("        </div>\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("          <label for=\"name\">RE-Enter Password</label>\n");
      out.write("          <input\n");
      out.write("            type=\"npassword\"\n");
      out.write("            class=\"form-control\"\n");
      out.write("            id=\"npassword\"\n");
      out.write("            placeholder=\" RE-Enter password\" name=\"npassword\" title=\"Plz enter valid password like Capital letter,Symbol and 8 charectors and one number\" pattern=\"^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,12}$\">\n");
      out.write("        </div>\n");
      out.write("         <br>\n");
      out.write("         <button type=\"submit\" id=\"btn-login\" class=\"btn btn-primary btn-block\" name=\"btn\" value=\"Set New Password\">Set New Password</button>\n");
      out.write("        <br>\n");
      out.write("       \n");
      out.write("        <button\n");
      out.write("          type=\"button\"\n");
      out.write("          id=\"btn-signup\"\n");
      out.write("          class=\"btn btn-default btn-block\">\n");
      out.write("            No account yet? <a href=\"user signup.jsp \" >Sign Up</a>\n");
      out.write(" \n");
      out.write("        </button>\n");
      out.write("        <hr>\n");
      out.write("        \n");
      out.write("      </form>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("  <!--[if IE 8]>\n");
      out.write("  <script src=\"//cdnjs.cloudflare.com/ajax/libs/ie8/0.2.5/ie8.js\"></script>\n");
      out.write("  <![endif]-->\n");
      out.write("\n");
      out.write("  <!--[if lte IE 9]>\n");
      out.write("  <script src=\"https://cdn.auth0.com/js/polyfills/1.0/base64.min.js\"></script>\n");
      out.write("  <script src=\"https://cdn.auth0.com/js/polyfills/1.0/es5-shim.min.js\"></script>\n");
      out.write("  <![endif]-->\n");
      out.write("\n");
      out.write("  <script src=\"https://cdn.auth0.com/js/auth0/9.11.2/auth0.min.js\"></script>\n");
      out.write("  <script src=\"https://cdn.auth0.com/js/polyfills/1.0/object-assign.min.js\"></script>\n");
      out.write("  \n");
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
