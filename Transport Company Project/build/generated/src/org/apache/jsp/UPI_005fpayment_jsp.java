package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class UPI_005fpayment_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>UPI Payment</title>\n");
      out.write("    </head>\n");
      out.write("     <link rel=\"stylesheet\" href=\"bootstrap.css\">\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("            .jumbotron\n");
      out.write("            {\n");
      out.write("                height: 300px;\n");
      out.write("                width: 400px;\n");
      out.write("                margin-left: 550px;\n");
      out.write("                margin-right: 50px;\n");
      out.write("                margin-top: 20px;\n");
      out.write("                background-color: skyblue;\n");
      out.write("            }\n");
      out.write("            h1\n");
      out.write("            {\n");
      out.write("                \n");
      out.write("                margin-left: 650px;\n");
      out.write("                margin-right: 50px;\n");
      out.write("                margin-top: 50px;\n");
      out.write("            }\n");
      out.write("            input[type=submit]\n");
      out.write("               {\n");
      out.write("                   text-align: center;\n");
      out.write("                   margin: 0;\n");
      out.write("                   color: black;\n");
      out.write("                   cursor: pointer;\n");
      out.write("                   width: 30%;\n");
      out.write("               }\n");
      out.write("        </style>\n");
      out.write("    <body>\n");
      out.write("     <h1>UPI Payment</h1>\n");
      out.write("        <br><br>\n");
      out.write("                <form action=\"UPI_payment\" method=\"POST\">\n");
      out.write("\n");
      out.write("        <div class=\"jumbotron\">\n");
      out.write("            \n");
      out.write("           <div class=\"row\"> \n");
      out.write("                <div class=\"col-sm-2\"></div>\n");
      out.write("            <div class=\"col-sm-8\"> \n");
      out.write("                <label>UPI Id :</label>\n");
      out.write("                <input type=\"text\" name=\"upi\" placeholder=\"Enter Your UPI Id\" class=\"form-control\" onkeypress=\"javascript:return isAlphanumric(event)\" required>\n");
      out.write("                <br>\n");
      out.write("                <label>Total Amount:</label>\n");
      out.write("                <input type=\"text\" name=\"amount\" placeholder=\"Enter Amount\" value=\"");
      out.print(session.getAttribute("Tbill"));
      out.write("\" class=\"form-control\" onkeypress=\"javascript:return isNumber(event)\" required>\n");
      out.write("            </div> \n");
      out.write("                <div class=\"col-sm-2\"></div>\n");
      out.write("                </div> \n");
      out.write("            <br><br>\n");
      out.write("            \n");
      out.write("                    <div class=\"row\">\n");
      out.write("                                    <div class=\"col-sm-3\"></div>\n");
      out.write("                <div class=\"col-sm-8\">\n");
      out.write("                    <input type=\"submit\" class=\"btn btn-success\" name=\"btn\" value=\"Pay Now\">\n");
      out.write("                    &nbsp &nbsp &nbsp &nbsp \n");
      out.write("                    <a href=\"newpayment.jsp \" class=\"btn btn-danger\">Cancel</a>\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("                </div>\n");
      out.write("        </div>\n");
      out.write("                </form>\n");
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
