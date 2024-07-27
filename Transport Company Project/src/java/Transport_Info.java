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
public class Transport_Info extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();

        String slip_no = req.getParameter("no");
        String vehicle_no = req.getParameter("vno");
        String model = req.getParameter("mname");
        String km = req.getParameter("units");
        String contact = req.getParameter("cno");
        String start_date = req.getParameter("date");
        String end_date = req.getParameter("date");
        String destination = req.getParameter("destination");
        String driver_name = req.getParameter("dname");
        String customer_name = req.getParameter("cname");
        String address = req.getParameter("caddress");
        String amount = req.getParameter("amount");
        String event = req.getParameter("btn");

        out.println(slip_no);
        out.println(vehicle_no);
        out.println(model);
        out.println(km);
        out.println(contact);
        out.println(start_date);
        out.println(end_date);
        out.println(driver_name);
        out.println(customer_name);
        out.println(address);
        out.println(amount);
        out.println(destination);
        out.println(event);

         HttpSession session=req.getSession();

        DatabaseConnection db = new DatabaseConnection();
        out.println(db.Connectdb());

        if (event.equals("Insert")) {
            String query1 = "insert into transport_info (uni_Slip_No,Model,Vehicle_No,Units,Destination,Trip_Start_Date,Trip_End_Date,Driver_Name,Cust_Name,Cust_Address,Contact,Transport_Amount)values('" + slip_no + "', '" + model + "', '" + vehicle_no + "', '" + km + "','" + destination + "', '" + start_date + "','" + end_date + "','" + driver_name + "','" + customer_name + "','" + address + "','" + contact + "','" + amount + "')";
            String result = db.Query(query1, "Record Insert");
            out.println(result);
             resp.setContentType("text/html;charset=UTF-8");
             out.println("<script type=\"text/javascript\">");
             out.println("alert('Record inserted successfully');");
             out.println("location='Transport Information.jsp';");
             out.println("</script>");
            
                            session.setAttribute("vehicle_no", vehicle_no);
                            session.setAttribute("km",km);
                            session.setAttribute("amount",amount);
  
        }

        if (event.equals("Delete")) {
            String query1 = "delete from  transport_info  where Cust_Name='" + customer_name + "'";
            String result = db.Query(query1, "Record Deleted");
            out.println(result);
            resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Record Deleted successfully');");
            out.println("location='Transport Information.jsp';");
            out.println("</script>");

        }
        if (event.equals("Update"))
        {
            String query1 = "update transport_info set Model='" + model + "', Vehicle_No='" + vehicle_no + "',Units='" + km + "',Destination='" + destination + "',Trip_Start_Date='" + start_date + "',Trip_End_Date='" + end_date + "',Driver_Name='" + driver_name + "',Cust_Name='" + customer_name + "',Cust_Address='" + address + "',Contact='" + contact + "',Transport_Amount='" + amount + "' Where uni_Slip_No='" + slip_no + "'";
            String result = db.Query(query1, "Record Updated");
            out.println(result);
            resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Record Updated successfully');");
            out.println("location='Transport Information.jsp';");
            out.println("</script>");

        }
    }
}
