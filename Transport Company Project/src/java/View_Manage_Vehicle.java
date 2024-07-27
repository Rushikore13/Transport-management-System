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
 * @author jyoti
 */
public class View_Manage_Vehicle extends HttpServlet {

   
     
   @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        
        String driver_name=req.getParameter("driver_name");
        String vehicle_no=req.getParameter("vehicle_no");
String rate=req.getParameter("rate");
        String event = req.getParameter("btn1");
        
        out.println(driver_name);
        out.println(vehicle_no);
        out.println(rate);
         out.println(event);

         HttpSession session=req.getSession();

        DatabaseConnection db = new DatabaseConnection();
        out.println(db.Connectdb());


        if (event.equals("Select")) 
        {
                            session.setAttribute("driver_name",driver_name);
                            session.setAttribute("vehicle_no",vehicle_no);
                            session.setAttribute("rate",rate);
                            

                           resp.sendRedirect("Booking.jsp");

}
        
}
    }

   

