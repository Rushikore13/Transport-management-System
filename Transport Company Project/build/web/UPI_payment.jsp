<%-- 
    Document   : UPI_payment
    Created on : 25 Apr, 2023, 9:16:07 PM
    Author     : jyoti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UPI Payment</title>
    </head>
     <link rel="stylesheet" href="bootstrap.css">
        <style type="text/css">
            .jumbotron
            {
                height: 300px;
                width: 400px;
                margin-left: 550px;
                margin-right: 50px;
                margin-top: 20px;
                background-color: skyblue;
            }
            h1
            {
                
                margin-left: 650px;
                margin-right: 50px;
                margin-top: 50px;
            }
            input[type=submit]
               {
                   text-align: center;
                   margin: 0;
                   color: black;
                   cursor: pointer;
                   width: 30%;
               }
        </style>
    <body>
     <h1>UPI Payment</h1>
        <br><br>
                <form action="UPI_payment" method="POST">

        <div class="jumbotron">
            
           <div class="row"> 
                <div class="col-sm-2"></div>
            <div class="col-sm-8"> 
                <label>UPI Id :</label>
                <input type="text" name="upi" placeholder="Enter Your UPI Id" class="form-control" onkeypress="javascript:return isAlphanumric(event)" required>
                <br>
                <label>Total Amount:</label>
                <input type="text" name="amount" placeholder="Enter Amount" value="<%=session.getAttribute("Tbill")%>" class="form-control" onkeypress="javascript:return isNumber(event)" required>
            </div> 
                <div class="col-sm-2"></div>
                </div> 
            <br><br>
            
                    <div class="row">
                                    <div class="col-sm-3"></div>
                <div class="col-sm-8">
                    <input type="submit" class="btn btn-success" name="btn" value="Pay Now">
                    &nbsp &nbsp &nbsp &nbsp 
                    <a href="newpayment.jsp " class="btn btn-danger">Cancel</a>
                    
                </div>
                </div>
        </div>
                </form>
    </body>
</html>
