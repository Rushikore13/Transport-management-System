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
public class Payment extends HttpServlet 
{
 @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
         PrintWriter out=resp.getWriter();
                
        String Payer_id=req.getParameter("id");
        String Payer_Name=req.getParameter("name");
        String email=req.getParameter("email");
        
        String Card_No=req.getParameter("cardno");
        String Amount=req.getParameter("amount");
        
        String cvv=req.getParameter("cvv");
        String event=req.getParameter("btn");

        out.println( Payer_id);
        out.println( Payer_Name);
        out.println(email);
        
        out.println(Card_No);
        out.println(Amount);
        out.println(cvv);
        out.println(event);
        
        
        DatabaseConnection db=new DatabaseConnection();
        out.println(db.Connectdb());
        
        if(event.equals("Pay Now"))
       {
          String query1="insert into  Payment(payer_id,payer_name,email,card_no,Amount,cvv)values('"+Payer_id+"','"+Payer_Name+"','"+email+"','"+Card_No+"','"+Amount+"','"+cvv+"')";
          String result=db.Query(query1, "Paid Successfully");
          out.println(result);
          resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Payment Successfully');");
            out.println("location='Feedback.jsp';");
            out.println("</script>");
 
 
       }
        if(event.equals("close"))
       {
          
          resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("location='newpayment.jsp';");
            out.println("</script>");
       }
        if(event.equals("Hand Cash"))
       {
        
          resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Your Booking Successfully Done');");
            out.println("location='Feedback.jsp';");
            out.println("</script>");
   
}
}
}
