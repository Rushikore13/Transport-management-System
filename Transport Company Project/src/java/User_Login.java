/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author teju
 */
public class User_Login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();

        String email = req.getParameter("email");
        String Password = req.getParameter("pass");
        String event = req.getParameter("btn");

        out.println(email);
        out.println(Password);
        out.println(event);
         HttpSession session=req.getSession();

        DatabaseConnection db = new DatabaseConnection();
        out.println(db.Connectdb());



        Connection cn = null;
        Statement st = null;
        
        if (event.equals("Login")) 
        {
            try {
                Class.forName("com.mysql.jdbc.Driver");
                cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_transport_system", "root", "root");
                
                st = cn.createStatement();
                String sql = "select * from user_signup_tbl where Email='" + email + "' and Pass ='" + Password + "'";
                ResultSet rs = st.executeQuery(sql);
                
                if (rs.next()) 
                {
                      session.setAttribute("User_Id", rs.getString("User_Id"));
                         session.setAttribute("contact",rs.getString("contact"));
                         session.setAttribute("email",rs.getString("email"));
                          
//                 resp.setContentType("text/html;charset=UTF-8");
//            out.println("<script type=\"text/javascript\">");
//            out.println("alert('Login Successfully');");
//            out.println("location='View_Driver Registration.jsp';");
//            out.println("</script>");
                      
                      
                    resp.sendRedirect("View_Driver Registration.jsp");
                    
                     
                } 
                else 
                {
            resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Login Failed');");
            out.println("location='UserLogin.jsp';");
            out.println("</script>");
                }
            } catch (Exception ex) {
                out.println(ex.toString());
            }
        }



    }
}
