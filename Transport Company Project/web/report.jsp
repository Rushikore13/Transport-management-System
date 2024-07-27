<%-- 
    Document   : report
    Created on : 22 May, 2023, 10:56:47 AM
    Author     : jyoti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="admin header.jsp" %>
        <div class="container">
            <br>
            <h1>Reports</h1>
            <br>
            <form action="view_report.jsp" method="post">
            <div class="row">
                <div class="col-sm-4">
                    <label>Start Date</label>
                    <input type="date" name="date1" class="form-control">
                </div>
                <div class="col-sm-4">
                     <label>End Date</label>
                    <input type="date" name="date2" class="form-control">
                </div>
               <div class="col-sm-4">
                   <label style="color: white">........................................................................................................ .................</label>
                   <input type="submit" name="btn" class="btn btn-success" value="Booking">
                   <input type="submit" name="btn" class="btn btn-success" value="Transport">
               </div>
            </div>
            <br>
             <div class="row">
                <div class="col-sm-4">
                   
                </div>
               <div class="col-sm-4">
                   <label style="color:white">.</label>
                   
               </div>
            </div>
            </form>
        </div>
        
    </body>
</html>
