<%-- 
    Document   :  Update Transport Information
    Created on : Feb 13, 2023, 10:44:40 AM
    Author     : teju
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> Update Transport Information </title>
                <link rel="stylesheet" href="bootstrap.css">
                <style type="text/css">
                      
        
         .container
         {
             opacity: 0.8;
             margin-top: 50px;
             border: 3px  solid black;
             padding-left: 60px;
             padding-right: 60px;
             background-color: white;
             height: 650px;
             width: 900px;
             box-shadow: 2px 10px 8px 10px #6D7B8D;
         }
         input[type=submit]
               {
                   cursor: pointer;
                   width: 20%;
               }
               body
               {
                   background-size: cover;
                   background-image: url("Project Images/transport2.jpg");

               }
                </style>
    </head>
    <body> 
         <%@include file="admin header.jsp" %>
        <form action="Transport_Info" method="POST">
                <script src="validation.js"></script>
            <div class="container">
                <center> <h1> Transport Information</h1></center>
            <div class="row">
                <div class="cl-sm-2"></div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label>Unique Slip No :</label>
                        <input type="Number" placeholder="Enter Your Id" class="form-control" value="<%=request.getParameter("slip_no")%>"  name="no"  onkeypress="javascript:return isNumber(event)" required>
                    </div>  
                    <div class="form-group">
                        <label>Vehicle No :</label>
                        <input type="text" placeholder="Enter Vehicle No" class="form-control" name="vno" value="<%=request.getParameter("vehicle_no")%>"  onkeypress="javascript:return isAlphanumric(event)" required>
                    </div>
                    <div class="form-group">
                        <label>Model :</label>
                        <input type="text" placeholder="Enter Model" class="form-control" name="mname" value="<%=request.getParameter("model")%>"  onkeypress="javascript:return isAlphanumric(event)" required>
                    </div> 
                    <div class="form-group">
                        <label>Units:</label>
                        <input type="text" placeholder="Enter Units" class="form-control" name="units" value="<%=request.getParameter("units")%>"  onkeypress="javascript:return isAlphanumric(event)" required>
                    </div>  
                    <div class="form-group">
                        <label>  Destination :</label>
                        <textarea name="destination" class="form-control" placeholder="Enter Destination Address" rows="3" cols="15" required><%=request.getParameter("destination")%></textarea>
                     </div>
                     <div class="form-group">
                        <label>Contact :</label>
                        <input type="text" placeholder="Enter Mobile Number" class="form-control" name="cno"value="<%=request.getParameter("contact")%>"  onkeypress="javascript:return isContactno(event)" maxlength="10" required>
                    </div>  
                </div>
                <div class="col-sm-6">
                     <div class="form-group">
                        <label>Trip Starting Date:</label>
                        <input type="date" placeholder="Enter Date" class="form-control" value="<%=request.getParameter("start_date")%>"  name="date" required>
                    </div>  
                     <div class="form-group">
                        <label>Trip Ending Date :</label>
                        <input type="date" placeholder="Enter Date " class="form-control"value="<%=request.getParameter("end_date")%>"  name="date" required>
                    </div>  
                     <div class="form-group">
                        <label>Driver Name:</label>
                        <input type="text" placeholder="Enter Driver Name" class="form-control" name="dname" value="<%=request.getParameter("driver_name")%>" onkeypress="javascript:return isString(event)" required>
                    </div> 
                     <div class="form-group">
                        <label>Customer Name:</label>
                        <input type="text" placeholder="Enter Customer Name" class="form-control" value="<%=request.getParameter("customer_name")%>"  name="cname" onkeypress="javascript:return isString(event)" required>
                    </div> 
                     <div class="form-group">
                        <label> Customer Address :</label>
                        <textarea name="caddress" class="form-control" placeholder="Enter Customer Address" rows="3" cols="15" required><%=request.getParameter("address")%> </textarea>
                     </div>
                        <div class="form-group">
                        <label>Amount :</label>
                        <input type="text" placeholder="Enter Transport Amount" class="form-control" value="<%=request.getParameter("amount")%>"  name="amount" onkeypress="javascript:return isFloat(event)" required>
                    </div>  
                    </div> 
                </div>
                 <br>
            <div class="row">
                <div class="col-sm-4"></div>

                <div class="col-sm-8">
                    <input type="submit" class="btn btn-success" name="btn" value="Update">  
                    &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp;
                    <input type="submit" class="btn btn-warning" name="btn" value="Delete">
                    

                </div>
            </div>
        </div>
        </form>
    </body>
    
</html>
