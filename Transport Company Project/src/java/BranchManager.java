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
public class BranchManager extends HttpServlet 
{
     @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        PrintWriter out=resp.getWriter();
        
        String manager_id=req.getParameter("no");
        String manager_name=req.getParameter("mname");
        String branch_name=req.getParameter("bname");
        String contact=req.getParameter("cno");
        String email=req.getParameter("email");
        String address=req.getParameter("address");
        String event=req.getParameter("btn");

        out.println(manager_id);
        out.println(manager_name);
        out.println(branch_name);
        out.println(contact);
        out.println(email);
        out.println(address);
        out.println(event);

    
        DatabaseConnection db=new DatabaseConnection();
        out.println(db.Connectdb());
        
        HttpSession session=req.getSession();
        
        if(event.equals("Insert"))
       {
          String query1="insert into Branch_Manager(Manager_Id,Manager_Name,Branch_Name,Address,Email,Contact)values('"+manager_id+"','"+manager_name+"','"+branch_name+"','"+address+"', '"+email+"','"+contact+"')";
       String result=db.Query(query1, "Record Inserted");
       
        resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Record inserted successfully');");
            out.println("location='Branch Manager.jsp';");
            out.println("</script>");
 
       }
            
          if(event.equals("Delete"))
       {
          String query1="delete from Branch_Manager where Manager_Name='"+manager_name+"'";
       String result=db.Query(query1, "Record Deleted");
       out.println(result);
 resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Record Deleted successfully');");
            out.println("location='Branch Manager.jsp';");
            out.println("</script>");
 
       } 
          if(event.equals("Update"))
       {
          String query1="Update Branch_Manager set Manager_Name='"+manager_name+"',Branch_Name='"+branch_name+"',Address='"+address+"',Email='"+email+"',Contact='"+contact+"' where Manager_Id='"+manager_id+"'";
       String result=db.Query(query1, "Record Updated");
       out.println(result);
       resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Record Updated successfully');");
            out.println("location='Branch Manager.jsp';");
            out.println("</script>");
 
 
       }
}
}
