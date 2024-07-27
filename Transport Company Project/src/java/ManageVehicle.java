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
public class ManageVehicle extends HttpServlet
{
@Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        PrintWriter out=resp.getWriter();
        
        String vehicle_no=req.getParameter("vno");
          
        String model=req.getParameter("mname");
        String vehicle_year=req.getParameter("year");
        String vehicle_img=req.getParameter("photo");
        String Rate=req.getParameter("rate"); 
        String vehicle_color=req.getParameter("color");
        String booked_date=req.getParameter("date");
        String driver_name=req.getParameter("dname");
        
        String route=req.getParameter("route");
        String contact=req.getParameter("cno");
        String event=req.getParameter("btn");
        
        out.println(vehicle_no);
       
        out.println(model);
        out.println(vehicle_year);
        out.println(vehicle_img);
        out.println(vehicle_color);
        out.println(booked_date);
        out.println(driver_name);
        out.println(route);
        out.println(contact);
        out.println(event);
        
        
        DatabaseConnection db=new DatabaseConnection();
        out.println(db.Connectdb());
        
         if(event.equals("Insert"))
       {
          String query1="insert into Manage_Vehicle(Vehicle_No,Model,Vehicle_Year,Vehicle_Img,Vehicle_Color,Rate,Booked_date,Driver_Name,Route,Driver_Contact)values('"+vehicle_no+"', '"+model+"' ,'"+vehicle_year+"','images/"+vehicle_img+"','"+vehicle_color+"','"+Rate+"','"+booked_date+"','"+driver_name+"', '"+route+"','"+contact+"')";
       String result=db.Query(query1, "Record Inserted");
       out.println(result);
       resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Inserted Successfully');");
            out.println("location='Manage Vehicle.jsp';");
            out.println("</script>");
 
 
       }
            
          if(event.equals("Delete"))
       {
          String query1="delete from  Manage_Vehicle where Vehicle_No='"+vehicle_no+"'";
       String result=db.Query(query1, "Record Deleted");
       out.println(result);
       resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Deleted Successfully');");
            out.println("location='Manage Vehicle.jsp';");
            out.println("</script>");
 
 
       } 
          
         if(event.equals("Update"))
       {
          String query1="Update  Manage_Vehicle Set Vehicle_No='"+vehicle_no+"',Model='"+model+"',Vehicle_Year='"+vehicle_year+"',Vehicle_Img='"+vehicle_img+"',Vehicle_Color='"+vehicle_color+"',Booked_date='"+booked_date+"',Driver_Name='"+driver_name+"',Route='"+route+"',Driver_Contact='"+contact+"' where Vehicle_No='"+vehicle_no+"'";
       String result=db.Query(query1, "Record Updated");
       out.println(result);
       resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('updated Successfully');");
            out.println("location='Manage Vehicle.jsp';");
            out.println("</script>");
 
 
       }
           
          
}
}

