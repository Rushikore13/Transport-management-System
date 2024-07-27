<%-- 
    Document   : update booking user
    Created on : 21 Apr, 2023, 9:31:43 PM
    Author     : jyoti
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
        <title> update Booking</title>
        <link rel="stylesheet" href="bootstrap.css">
        <style type="text/css">
           
         body
         {
             
             background-image: url("Project Images/booking.png");
             background-size:cover;
             margin-top: 0px;
         }
         .container
         {
             box-shadow: 2px 10px 8px 10px #6D7B8D;
             background-color: white;
             border: 3px  solid black;
             opacity: 0.8;
             height: 700px;
             width: 900px;
             margin-top: 10px;

         }
          
          h1
          {
              padding-top: 15px;
              font-size: 50px;
          }
           .btn-success
            {
                color: darkgreen;
                text-align: center;
                display: inline;
                font-size: 14px;
                border-radius:1px; 
              
         
            }
            input[type=submit]
               {
                   text-align: center;
                   margin: 0;
                   color: black;
                   cursor: pointer;
                   width: 20%;
               }
               
                        </style>
    </head>
    <body> 
        <%@include file="user header.jsp" %>
       
       <br>
        
        <form action="Booking" method="POST">
        <script src="validation.js"></script>
            <div class="container">
            <center><h1> Booking</h1> </center>
            
            <br><br>
            
            <div class="row">
                <div  class="col-sm-2"></div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <label>Customer Id :</label>
                        <input type="Number" placeholder="Enter Your Id" class="form-control" name="id"   value="<%=request.getParameter("id")%>" onkeypress="javascript:return isNumber(event)" required>
                    </div> <BR> 
                     <div class="form-group">
                        <label>Customer Name :</label>
                        <input type="text" placeholder="Enter Your Name" class="form-control" name="name"  value="<%=request.getParameter("Cname")%>" onkeypress="javascript:return isString(event)" required>
                    </div> <br>
                    <div class="form-group">
                        <label>Contact :</label>
                        <input type="text" placeholder="Enter Mobile Number" class="form-control"  value="<%=request.getParameter("contact")%>" name="contact" onkeypress="javascript:return isContactno(event)" maxlength="10" required>
                    </div><br>
                    <div class="form-group">
                        <label> Kilometer :</label>
                        <input type="number" placeholder="Enter KM" id="km" onkeyup="cal()" class="form-control" value="<%=request.getParameter("km")%>" onkeypress="javascript:return isAlphanumric(event)" name="units" required>
                    </div>  <br>
                      <div class="form-group">
                        <label>Booking Date :</label>
                        <input type="date" placeholder="Enter Date" class="form-control" name="date" value="<%=request.getParameter("date")%>"  required>
                    </div><br>
                </div>

                <div class="col-sm-4">
                     <div class="form-group">
                        <label>Driver Id :</label>
                        <input type="Number" placeholder="Enter Your Id" class="form-control" name="no"  value="<%=request.getParameter("Did")%>" onkeypress="javascript:return isNumber(event)" required>
                    </div>  <br>
                     <div class="form-group">
                        <label>Driver  Name :</label>
                        <input type="text" placeholder="Enter Your Name" class="form-control" name="dname"  value="<%=request.getParameter("Dname")%>" onkeypress="javascript:return isString(event)" required>
                    </div> <br>
                     <div class="form-group">
                        <label>Vehicle No :</label>
                        <input type="number" placeholder="Enter Vehicle No" class="form-control" name="vno"  value="<%=request.getParameter("Vehicle_No")%>" onkeypress="javascript:return isAlphanumric(event)" required>
                    </div>  <br>
                    
                    <div class="form-group">
                        <label> Total Bill :</label>
                        <input type="number" placeholder="Enter Bill" class="form-control" name="bill"  value="<%=request.getParameter("Tbill")%>" onkeypress="javascript:return isNumber(event)" required>
                    </div> <br> 
                    <div class="form-group">
                        <label> Rate :</label>
                        <input type="number" placeholder="rate per km" id="rate" onkeyup="cal()" class="form-control"  value="<%=request.getParameter("rate")%>" onkeypress="javascript:return isNumber(event)"  name="rate" required>
                    </div> <br> 
                </div>
                
            </div>
             <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
                    <div class="form-group">
                        <label>Address :</label>
                        <textarea name="address" class="form-control" placeholder="Enter  Your Address" rows="4" cols="40" required> <%=request.getParameter("address")%></textarea>
                    </div>
                </div>
            </div>
            <br>
            <br><br>
             <div class="row">
                                    <div class="col-sm-4"></div>
                <div class="col-sm-8">
                    <input type="submit" class="btn btn-info" name="btn" value="Update">&nbsp &nbsp &nbsp &nbsp 
                    <input type="submit" class="btn btn-danger" name="btn" value="Delete"> 
                    

                </div>
            </div>
                               
            
            </div>
      
        </form>
    </body>
</html>