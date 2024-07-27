package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.Connection;

public final class list_005fDriver_0020Registratoin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title> Page</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"bootstrap.css\">\n");
      out.write("        <style>\n");
      out.write("            h1\n");
      out.write("            {\n");
      out.write("                padding-top: 40px;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <center><h1>List Driver Details</h1></center>\n");
      out.write("            <br>\n");
      out.write("       <form action=\"list_Driver Registration.jsp\" method=\"post\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-sm-6\"></div>\n");
      out.write("                    <div class=\"col-sm-4\">\n");
      out.write("                        <input type=\"text\" name=\"Driver_Name\" value=\"\" class=\"form-control\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-sm-2\">\n");
      out.write("                        <input type=\"submit\" name=\"btn\" value=\"search\" class=\"btn btn-primary\">\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("           <br><br>\n");
      out.write("            </form>\n");
      out.write("      ");
   
          
          Connection cn=null;
          Statement st=null;
           int counter=1;
           String sql="";
                    String name=request.getParameter("Driver_Name");
                    String event=request.getParameter("btn");
                    if(event!=null)
                                               {
                        sql="select * from Driver_Registration where Driver_Name='"+name+"'";
                    }
                                       else{
                        sql="select * from Driver_Registration";
                                       }
           
      try {
                        Class.forName("com.mysql.jdbc.Driver");
                        cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_transport_system", "root", "root");
                        st = cn.createStatement();
                        ResultSet rs = st.executeQuery(sql);
                        while (rs.next()) 
            {

      
      out.write("\n");
      out.write("     <div class=\"jumbotron\">\n");
      out.write("         <b>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-sm-3\">\n");
      out.write("                        <img src=\"\" width=\"200\" height=\"200\"/>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-sm-3\">\n");
      out.write("                        <h4>Driver_Id : ");
      out.print(rs.getString("Driver_Id"));
      out.write("</h4>\n");
      out.write("                        <h4>Driver_Name : ");
      out.print(rs.getString("driver_name"));
      out.write("</h4>\n");
      out.write("                        <h4>Contact : ");
      out.print(rs.getString("contact"));
      out.write("</h4>\n");
      out.write("                        <h4>Address : ");
      out.print(rs.getString("address"));
      out.write("</h4>\n");
      out.write("                        <h4>Experience : ");
      out.print(rs.getString("experience"));
      out.write("</h4>\n");
      out.write("                        <h4>Licence_No : ");
      out.print(rs.getString("licence_no"));
      out.write("</h4>\n");
      out.write("                        \n");
      out.write("                        <input type=\"submit\" name=\"btn\" value=\"Call\" class=\"btn btn-primary\">\n");
      out.write("                    </div>\n");
      out.write("                        \n");
      out.write("                </div>\n");
      out.write("                        \n");
      out.write("         </b>\n");
      out.write("            </div>\n");
      out.write("    ");

        }
     }catch(Exception ex)
    {
    out.println(ex.toString());

     }
    
      out.write("\n");
      out.write("            \n");
      out.write("  \n");
      out.write("        </div>\n");
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
