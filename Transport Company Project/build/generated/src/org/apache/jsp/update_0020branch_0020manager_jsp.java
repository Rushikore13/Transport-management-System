package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.Connection;

public final class update_0020branch_0020manager_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        \n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <title>Branch Manager</title>\n");
      out.write("                    <link rel=\"stylesheet\" href=\"bootstrap.css\">\n");
      out.write("    <style type=\"text/css\">\n");
      out.write("        \n");
      out.write("         \n");
      out.write("         .container\n");
      out.write("         {\n");
      out.write("             \n");
      out.write("             box-shadow: 2px 10px 8px 10px #6D7B8D;\n");
      out.write("             opacity: 0.9;\n");
      out.write("             margin-top: 100px;\n");
      out.write("             border: 3px  solid black;\n");
      out.write("             background-color: white;\n");
      out.write("             height: 500px;\n");
      out.write("             width: 1000px;\n");
      out.write("\n");
      out.write("         }\n");
      out.write("          \n");
      out.write("          h1\n");
      out.write("          {\n");
      out.write("              font-size: 50px;\n");
      out.write("          }\n");
      out.write("           \n");
      out.write("            input[type=submit]\n");
      out.write("               {\n");
      out.write("                   color: black;\n");
      out.write("                   cursor: pointer;\n");
      out.write("                   width: 18%;\n");
      out.write("               }\n");
      out.write("               body\n");
      out.write("               {\n");
      out.write("                   \n");
      out.write("                   background-size: 1500px 900px;\n");
      out.write("                   background-image: url(\"Project Images/branch.jpg\");\n");
      out.write("\n");
      out.write("               }\n");
      out.write("              \n");
      out.write("                        </style>\n");
      out.write("    </head>\n");
      out.write("    <body> \n");
      out.write("        \n");
      out.write("        <form action=\"BranchManager\" method=\"POST\">\n");
      out.write("        <script src=\"validation.js\"></script>\n");
      out.write("            <div class=\"container\">\n");
      out.write("            <center><h1> Branch Manager</h1> </center>\n");
      out.write("            \n");
      out.write("            <br><br>\n");
      out.write("            \n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div  class=\"col-sm-2\"></div>\n");
      out.write("                <div class=\"col-sm-4\">\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label>Manager Id :</label>\n");
      out.write("                        <input type=\"text\" placeholder=\"Enter Your Id\" class=\"form-control\" name=\"no\" value=\"");
      out.print(request.getParameter("Manager_Id"));
      out.write("\" onkeypress=\"javascript:return isNumber(event)\" required>\n");
      out.write("                    </div>  \n");
      out.write("                     <div class=\"form-group\">\n");
      out.write("                        <label>Manager  Name :</label>\n");
      out.write("                        <input type=\"text\" placeholder=\"Enter Manager Name\" class=\"form-control\" name=\"mname\" onkeypress=\"javascript:return isString(event)\" required>\n");
      out.write("                    </div> \n");
      out.write("                     <div class=\"form-group\">\n");
      out.write("                        <label>Branch   Name :</label>\n");
      out.write("                        <input type=\"text\" placeholder=\"Enter Manager Name\" class=\"form-control\" name=\"bname\"onkeypress=\"javascript:return isString(event)\" required>\n");
      out.write("                    </div> \n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"col-sm-4\">\n");
      out.write("                     <div class=\"form-group\">\n");
      out.write("                        <label>Contact :</label>\n");
      out.write("                        <input type=\"text\" placeholder=\"Enter Mobile Number\" class=\"form-control\" name=\"cno\" onkeypress=\"javascript:return isContactno(event)\" maxlength=\"10\" required>\n");
      out.write("                    </div> \n");
      out.write("                     <div class=\"form-group\">\n");
      out.write("                        <label>Email:</label>\n");
      out.write("                        <input type=\"email\" placeholder=\"Enter Your Email \" class=\"form-control\" name=\"email\" required>\n");
      out.write("                    </div>  \n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label>Address :</label>\n");
      out.write("                        <textarea name=\"address\" class=\"form-control\" placeholder=\"Enter Address\" rows=\"2\" cols=\"10\" required></textarea>\n");
      out.write("                    </div>\n");
      out.write("                   \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <br><br>\n");
      out.write("            \n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    <div class=\"col-sm-2\"></div>\n");
      out.write("                <div class=\"col-sm-8\">\n");
      out.write("                    <input type=\"submit\" class=\"btn btn-success\" name=\"btn\" value=\"Update\">  \n");
      out.write("                    <input type=\"submit\" class=\"btn btn-warning\" name=\"btn\" value=\"Delete\">\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("\n");
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
