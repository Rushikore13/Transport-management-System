<%-- 
    Document   : view_report
    Created on : 22 May, 2023, 11:06:00 AM
    Author     : jyoti
--%>

<%@page import="java.util.Map"%>
<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Connection conn = null;
            String event=request.getParameter("btn");
           
            
            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_transport_system", "root", "root");
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            
            if(event.equals("Booking"))
            {
            
            File reportFile = new File(application.getRealPath("Report\\booking.jasper"));//your report_name.jasper file
            Map parameters = new HashMap();
            parameters.put("date", request.getParameter("date1"));
            parameters.put("date1", request.getParameter("date2"));
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, conn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
                       }
            
            
             if(event.equals("Transport"))
            {
            
            File reportFile = new File(application.getRealPath("Report\\transport info.jasper"));//your report_name.jasper file
            Map parameters = new HashMap();
            parameters.put("date", request.getParameter("date1"));
            parameters.put("date1", request.getParameter("date2"));
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, conn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
                       }
        %>
    </body>
</html>
