<%-- 
    Document   : newpayment
    Created on : 16 Apr, 2023, 8:38:51 PM
    Author     : jyoti
--%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Payment</title>
                 <link rel="stylesheet" href="bootstrap.min.css">
         <style>
              body
            {
               background-image: url("projectImg/projectLogin.jpg");
                background-repeat: no-repeat;
                background-size: cover; 
            }
              .container
            {
                margin: 60px;
                padding: 30px;
                background-color:skyblue; 
                border: solid 2px black;
                background-image: url("projectImg/projectLogin.jpg");
                background-repeat: no-repeat;
                background-size: cover;
                border-radius:30px;
                box-shadow:0px 10px 40px -10px rgba(0, 0, 0, 0.9);
                font-size: 13px;
            }
       </style>
    </head>
    <body>
        <%@include file="user header.jsp" %>
       
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-6">
                <div class="container">
                     <h1 style=" color:black; text-align: center">Payment Method</h1>     
                     <br>
            <div class="row"> 
                <div class="col-sm-2"></div>
            <div class="col-sm-8">                
                <center><a href="Payment.jsp" class="btn btn-primary">Credit Card / Debit Card</a></center> 
            </div> 
                <div class="col-sm-2"></div>
                </div>
                     <br><br>
            <div class="row"> 
                <div class="col-sm-2"></div>
            <div class="col-sm-8">                
                <center><a href="UPI_payment.jsp" class="btn btn-primary">Phone Pay / Google Pay</a></center> 
            </div> 
                <div class="col-sm-2"></div>
                </div>
                  <br><br> 
                   <div class="row"> 
                <div class="col-sm-2"></div>
            <div class="col-sm-8"> 
                <form action="Payment" method="post">
                <center><input type="submit" name="btn" class="btn btn-primary" value="Hand Cash"></center>
                </form>
            </div> 
                <div class="col-sm-2"></div>
                </div>
            </div>
        </div>
            <div class="col-sm-3"></div>
            </div>
            
    </body>
</html>
