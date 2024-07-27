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
public class CustomerRegistration extends HttpServlet 
{
@Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        PrintWriter out=resp.getWriter();
        
        String customer_id=req.getParameter("no");
        String first_name=req.getParameter("fname");
        String last_name=req.getParameter("lname");
        String email=req.getParameter("email");
        String contact=req.getParameter("cno");
        String address=req.getParameter("address");
        String event=req.getParameter("btn");

        out.println(customer_id);
        out.println(first_name);
        out.println(last_name);
        out.println(email);
        out.println(contact);
        out.println(address);
        out.println(event);
        
        
        DatabaseConnection db=new DatabaseConnection();
        out.println(db.Connectdb());
        
          if(event.equals("Register"))
       {
          String query1="insert into  customer_registration(Cust_Id,First_Name, Last_Name,Address,Contact,Email)values('"+customer_id+"','"+first_name+"','"+last_name+"','"+address+"' ,'"+contact+"','"+email+"')";
       String result=db.Query(query1, "Record Register");
       out.println(result);
       
      resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Registerd successfully');");
            out.println("location='Customer Registration.jsp';");
            out.println("</script>");
 
       }
          if (event.equals("Delete")) {
            String query1 = "delete from  customer_registration where First_Name='" + first_name + "'";
            String result = db.Query(query1, "Record Deleted");
            out.println(result);
            
            resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Record Deleted');");
            out.println("location='Customer Registration.jsp';");
            out.println("</script>");

        }
           if(event.equals("Update"))
       {
          String query1="Update customer_registration set Cust_Id='"+customer_id+"',First_Name='"+first_name+"',Last_Name='"+last_name+"',Email='"+email+"',Contact='"+contact+"',Address='"+address+"' where Cust_Id='"+customer_id+"'";
       String result=db.Query(query1, "Record Updated");
       out.println(result);
 
       resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Record Updated successfully');");
            out.println("location='Customer Registration.jsp';");
            out.println("</script>");
       }
   
}
}
