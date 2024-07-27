package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.Connection;

public final class Signup_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Sign Up Page</title>\n");
      out.write("            <link rel=\"stylesheet\" href=\"bootstrap.css\">\n");
      out.write("            <style type=\"text/css\">\n");
      out.write("                .container\n");
      out.write("                {\n");
      out.write("                     box-shadow: 2px 10px 8px 10px #6D7B8D;\n");
      out.write("                    opacity: 0.8;\n");
      out.write("                    background-color:white;\n");
      out.write("                   width: 50%;\n");
      out.write("                   height: 700px;\n");
      out.write("                }\n");
      out.write("            h1\n");
      out.write("            {\n");
      out.write("                margin-top: 20px;\n");
      out.write("                padding-bottom: 50px;\n");
      out.write("            }\n");
      out.write("            body\n");
      out.write("            {\n");
      out.write("                padding-top:  10px;\n");
      out.write("                color: black;\n");
      out.write("                background-size:100% 900px;\n");
      out.write("                background-image: url(\"Project Images/New folder (2)/img1.jpeg\");\n");
      out.write("\n");
      out.write("               \n");
      out.write("            }\n");
      out.write("             \n");
      out.write("               input[type=submit]\n");
      out.write("               {\n");
      out.write("                   cursor: pointer;\n");
      out.write("                   width: 47%;\n");
      out.write("               }\n");
      out.write("            </style>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("         ");

        Connection cn=null;
            Statement st=null;
            String id="1";
            try
        {
         Class.forName("com.mysql.jdbc.Driver");
         cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Online_transport_system","root","root");
         st=cn.createStatement();
         String sql="select Admin_Id from signup_tbl";
         ResultSet rs= st.executeQuery(sql);
         while(rs.next())
         { 
           id=String.valueOf(Integer.parseInt(rs.getString("Admin_Id"))+1);
         }
        
        }catch(Exception ex)
        {
          out.println(ex);
        } 
    
      out.write("\n");
      out.write("       \n");
      out.write("        <form action=\"SignUp\" method=\"POST\">\n");
      out.write("            <script src=\"validation.js\"></script>\n");
      out.write("\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <center> <h1>Sign Up</h1></center>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-sm-2\"></div>\n");
      out.write("                    <div class=\"col-sm-8\">\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label>Admin Id :</label>\n");
      out.write("`                               <input type=\"number\" required class=\"form-control\" name=\"txt.id\" placeholder=\"Enter user Id\" value=\"");
      out.print(id);
      out.write("\" onkeypress=\"javascript:return isNumber(event)\">\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-sm-2\"></div>\n");
      out.write("                    <div class=\"col-sm-8\">\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label>First Name :</label>\n");
      out.write("                            <input type=\"text\" required class=\"form-control\" name=\"txt.Fname\" placeholder=\"Enter First Name\" onkeypress=\"javascript:return isString(event)\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-sm-2\"></div>\n");
      out.write("                    <div class=\"col-sm-8\">\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label>Last Name :</label>\n");
      out.write("                            <input type=\"text\"  required class=\"form-control\" name=\"txt.Lname\" placeholder=\"Enter Last Name\"onkeypress=\"javascript:return isString(event)\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-sm-2\"></div>\n");
      out.write("                    <div class=\"col-sm-8\">\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label>Email :</label>\n");
      out.write("                            <input type=\"email\" required class=\"form-control\" name=\"txt.email\" placeholder=\"Enter Email \">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-sm-2\"></div>\n");
      out.write("                    <div class=\"col-sm-8\">\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label>Password :</label>\n");
      out.write("                            <input type=\"Password\" required class=\"form-control\" title=\"Plz enter valid password like Capital letter,Symbol and 8 charectors and one number\" pattern=\"^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,12}$\" name=\"txt.pass\" placeholder=\"Enter Password\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-sm-2\"></div>\n");
      out.write("                    <div class=\"col-sm-8\">\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label>Contact :</label>\n");
      out.write("                            <input type=\"text\" required class=\"form-control\" name=\"txt.contact\" placeholder=\"Enter Mobile Number\" onkeypress=\"javascript:return isContactno(event)\" maxlength=\"10\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <br> \n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-sm-3\"></div>\n");
      out.write("                    \n");
      out.write("                    <div class=\"col-sm-6\">\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <a href=\"Driver Registration.jsp\"><input type=\"submit\" name=\"btn_save\" class=\"btn btn-info\" value=\"Sign Up\"></a>\n");
      out.write("             <input type=\"submit\"  name=\"btn_save\" class=\"btn btn-info\" value=\" Cancel\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                   \n");
      out.write("            </div>\n");
      out.write("           \n");
      out.write("        </form>         \n");
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
