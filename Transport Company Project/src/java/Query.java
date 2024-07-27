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
import javax.servlet.http.HttpSession;

/**
 *
 * @author teju
 */
public class Query extends HttpServlet 
{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
         PrintWriter out=resp.getWriter();
        
        String Customer_id=req.getParameter("id");
        String Customer_name=req.getParameter("name");
        String email=req.getParameter("email");
        String contact=req.getParameter("contact");
        String Query=req.getParameter("query");
        String event=req.getParameter("btn");

        out.println( Customer_id);
        out.println(Customer_name);
        out.println(email);
        out.println(contact);
        out.println(Query);
        out.println(event);
        
        HttpSession session=req.getSession();
   
        
        DatabaseConnection db=new DatabaseConnection();
        out.println(db.Connectdb());
        
         if(event.equals("Submit"))
       {
          String query1="insert into query (Cust_id,Cust_name,Email,Contact,Quefeedback,uid)values('"+Customer_id+"','"+Customer_name+"','"+email+"','"+contact+"','"+Query+"','"+session.getAttribute("User_Id") +"')";
          String result=db.Query(query1, "Record Submited");
          out.println(result);
          resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Your Response is Recorded ');");
            out.println("location='list_booking user.jsp';");
            out.println("</script>");
 
 
       }
          if(event.equals("Solution"))
       {
          
           resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert(' ');");
            out.println("location='Query.jsp';");
            out.println("</script>");
 
 
       }
}
}
