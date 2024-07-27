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
 * @author teju
 */
public class SignUp extends HttpServlet 
{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        PrintWriter out=resp.getWriter();
        
        String id=req.getParameter("txt.id");
        String Fname=req.getParameter("txt.Fname");
        String Lname=req.getParameter("txt.Lname");
        String email=req.getParameter("txt.email");
        String password=req.getParameter("txt.pass");
        String contact=req.getParameter("txt.contact");
        String event=req.getParameter("btn_save");

        out.println(id);
        out.println(Fname);
        out.println(Lname);
        out.println(email);
        out.println(password);
        out.println(contact);
        out.println(event);

        
        DatabaseConnection db=new DatabaseConnection();
        out.println(db.Connectdb());
        
        if(event.equals("Sign Up"))
       {
          String query1="insert into  signup_tbl(Admin_Id,First_Name, Last_Name,Email,Pass,Contact)values('"+id+"','"+Fname+"','"+Lname+"','"+email+"','"+password+"','"+contact+"')";
       String result=db.Query(query1, "SignUp");
       out.println(result);
resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Signup Successfully');");
            out.println("location='AdminLogin.jsp';");
            out.println("</script>");
 
       }
    }
  
   
}
