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
public class UPI_payment extends HttpServlet {

     @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();

        String U_id = req.getParameter("upi");
        String amount = req.getParameter("amount");
        String event = req.getParameter("btn");
        

        out.println(U_id);
        out.println(amount);
        out.println(event);
     
        DatabaseConnection db = new DatabaseConnection();
        out.println(db.Connectdb());


        if (event.equals("Pay Now")) {

            String query1 = "insert into upi_payment(UPI_Id,amount)values('" + U_id + "','" + amount+ "')";
            String result = db.Query(query1, "Payment Successful");
            out.println(result);

            resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Payment successful');");
            out.println("location='Feedback.jsp';");
            out.println("</script>");
        }
     }
}