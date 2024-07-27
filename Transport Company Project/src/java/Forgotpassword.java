/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author jyoti
 */
public class Forgotpassword extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();

        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String npassword = req.getParameter("npassword");
        String event =req.getParameter("btn");
        
        out.println(email);
        out.println(password);
        out.println(npassword);
        out.println(event);
        
        DatabaseConnection db = new DatabaseConnection();
        out.println(db.Connectdb());
        
        if(event.equals("Set New Password"))
        {            
               
          String update=db.Query("update user_signup_tbl set Pass='"+npassword+"' where Pass='"+password+"' and Email='"+email+"'", "Updated");
          out.println(update);
                        
                       
        }
       
}
}