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
public class DriverRegistration extends HttpServlet 
{
@Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        PrintWriter out=resp.getWriter();
        
        String driver_id=req.getParameter("no");
        String driver_name=req.getParameter("name");
        String contact=req.getParameter("cno");
        String experience=req.getParameter("experience");
        String licence_no=req.getParameter("lno");
        String photo=req.getParameter("photo");
        String address=req.getParameter("address");
        String event=req.getParameter("btn");

        out.println(driver_id);
        out.println(driver_name);
        out.println(contact);
        out.println(experience);
        out.println(licence_no);
        out.println(photo);
        out.println(address);
        out.println(event);
        
        
        DatabaseConnection db=new DatabaseConnection();
        out.println(db.Connectdb());
        
        
         if(event.equals("Insert"))
       {
          String query1="insert into  driver_registration(Driver_Id,Driver_Name,Contact, Address,Experience,Photo ,Licence_No)values('"+driver_id+"','"+driver_name+"','"+contact+"','"+address+"','"+experience+"','dimage/"+photo+"','"+licence_no+"')";
       String result=db.Query(query1, "Record Inserted");
       out.println(result);
      resp.setContentType("text/html;charset=UTF-8");         
      out.println("<script type=\"text/javascript\">");
          out.println("alert('Record inserted successfully');");
          out.println("location='Driver Registration.jsp'");
          out.println("</script>");
       }
          if (event.equals("Delete")) {
            String query1 = "delete from  driver_registration where Driver_Name='" + driver_name + "'";
            String result = db.Query(query1, "Record Deleted");
            out.println(result);
            
            resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Record Deleted');");
            out.println("location='Driver Registration.jsp';");
            out.println("</script>");

        }
         
         
      if(event.equals("Update"))
       {
          String query1="Update driver_registration set Driver_Name='"+driver_name+"',Contact='"+contact+"',Address='"+address+"',Experience='"+experience+"',Photo='images/"+photo+"' where Driver_Id='"+driver_id+"'";
       String result=db.Query(query1, "Record Updated");
       out.println(result);
 
       resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Record Updated successfully');");
            out.println("location='Driver Registration.jsp'");
            out.println("</script>");
       }

            
    }
}
