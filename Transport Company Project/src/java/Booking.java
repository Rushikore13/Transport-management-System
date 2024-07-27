/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;
import javax.ws.rs.core.Response;

/**
 *
 * @author teju
 */
public class Booking extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();

        String id = req.getParameter("id");
        String Cname = req.getParameter("name");
        String contact = req.getParameter("contact");
        String Vehicle_No = req.getParameter("vno");
        String km = req.getParameter("units");
        String bdate = req.getParameter("date");        
        String address = req.getParameter("address");
        String Did = req.getParameter("no");
        String Dname = req.getParameter("dname");
        String Tbill = req.getParameter("bill");
        String rate = req.getParameter("rate");
        String Email = req.getParameter("email");                 
        String event = req.getParameter("btn");
        

        out.println(id);
        out.println(Cname);
        out.println(contact);
        out.println(Vehicle_No);
        out.println(km);
        out.println(bdate);
        out.println(address);
        out.println(Did);
        out.println(Dname);
        out.println(Tbill);
        out.println(Email);        
        out.println(event);
     

        
         HttpSession session=req.getSession();

        DatabaseConnection db = new DatabaseConnection();
        out.println(db.Connectdb());


        if (event.equals("Submit")) {

            String query1 = "insert into Booking(Cust_Id,Cust_Name,Address,Contact,Vehicle_No,Units,Driver_Id,Driver_Name,T_Bill,rate,uid,bdate,Email)values('" + id + "','" + Cname + "','" + address + "','" + contact + "','" + Vehicle_No + "','" + km + "','"+Did+"','"+Dname+"','"+Tbill+"','"+rate+"','"+session.getAttribute("User_Id") +"','"+bdate+"','"+Email+"')";
            String result = db.Query(query1, "Record Submitted");
            out.println(result);

                  session.setAttribute("Cname",Cname);
                  session.setAttribute("contact",contact);
                  session.setAttribute("Tbill",Tbill);
                  

          resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Record inserted successfully');");
            out.println("location='newpayment.jsp';");
            out.println("</script>");

        }
        if (event.equals("Delete")) {
            String query1 = "delete from  Booking where Cust_Name='" + Cname + "'";
            String result = db.Query(query1, "Record Deleted");
            out.println(result);
            
            resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Record Deleted');");
            out.println("location='Booking.jsp';");
            out.println("</script>");

        }
        if (event.equals("Update")) {
            String query1 = "Update Booking set Cust_Name='" + Cname + "',Address='" + address + "',Contact='" + contact + "',Vehicle_No='" + Vehicle_No + "',Units='" + km + "',Driver_Id='"+Did+"' ,Driver_Name='"+Dname+"',T_Bill='"+Tbill+"',bdate='"+bdate+"',Email='"+Email+"' where Cust_Id='" + id + "'";
            String result = db.Query(query1, "Record Updated");
            out.println(result);
       resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Record Updated successfully');");
            out.println("location='Booking.jsp';");
            out.println("</script>");

        }

    }
}
