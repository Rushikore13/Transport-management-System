<%-- 
    Document   : Booking
    Created on : Feb 12, 2023, 10:11:41 PM
    Author     : teju
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
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
        <title>Booking</title>
        <link rel="stylesheet" href="bootstrap.css">
        <style type="text/css">
            
            
           
         body
         {
             
             background-image: url("Project Images/booking.png");
             background-size:cover;
             margin-left: 100px;
             margin-right: 100px;
             
         }
         .container
         {
             box-shadow: 2px 10px 8px 10px #6D7B8D;
             background-color: white;
             border: 3px  solid black;
             opacity: 0.8;
             height: 700px;
             width: 400px;
             margin-top: 10px;
             margin-bottom: 30px;
             font-size: 14px;
             box-sizing: border-box;
             
             
         }
          
          h1
          {
              padding-top: 10px;
              font-size: 100px;
          }
           .btn-success
            {
                color: darkgreen;
                text-align: center;
                display: inline;
                
                border-radius:1px; 
              
            
          
              width: 20%;
              font-size: 20px;
                 box-shadow: 4px 4px 2px 4px #888888;
          
         
            }
            .btn-danger
            {
                              color: darkred;
                text-align: center;
                display: inline;
                
                border-radius:1px; 
              
            
          
              width: 20%;
              font-size: 20px;
                 box-shadow: 4px 4px 2px 4px #888888;

            }
               
                        </style>
                        
              <script>
            
            function cal()
            {
                var a=document.getElementById("rate").value;
                 var b=document.getElementById("km").value;
                 
                 
                 document.getElementById("tbill").value=a*b;
                 
                
            }
        </script>
        
                   
                        
    </head>
    <body> 
       <%@include file="user header.jsp" %>
       <br>
        
        <%
        
      
        Connection cn=null;
            Statement st=null;
            String id="1";
                    try
        {
         Class.forName("com.mysql.jdbc.Driver");
         cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_transport_system","root","root");
         st=cn.createStatement();
         String sql="select Cust_Id from Booking";
         ResultSet rs= st.executeQuery(sql);
         while(rs.next())
         { 
           id=String.valueOf(Integer.parseInt(rs.getString("Cust_Id"))+1);
         }
        
        }catch(Exception ex)
        {
          out.println(ex);
        } 
          
    %>
    <form action="Booking" method="POST">
        <script src="validation.js"></script>
            <div class="container">
            <center><h1> Booking</h1> </center>
            
            <br>
            
            <div class="row">
                <div  class="col-sm-2"></div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <label>Customer Id :</label>
                        <input type="Number" placeholder="Enter Your Id" class="form-control" name="id"  value="<%=session.getAttribute("User_Id")%>" onkeypress="javascript:return isNumber(event)" required>
                    </div> <BR> 
                     <div class="form-group">
                        <label>Customer Name :</label>
                        <input type="text" placeholder="Enter Your Name" class="form-control" name="name"onkeypress="javascript:return isString(event)" required>
                    </div> <br>
                     <div class="form-group">
                        <label>Email :</label>
                        <input type="email" id="email" placeholder="Enter Your Email" value="<%=session.getAttribute("email")%>" class="form-control" name="email"  required>
                    </div><br>
                    <div class="form-group">
                        <label>Contact :</label>
                        <input type="text" placeholder="Enter Mobile Number" class="form-control" name="contact" value="<%=session.getAttribute("contact")%>" onkeypress="javascript:return isContactno(event)" maxlength="10" required>
                    </div><br>
                     <div class="form-group">
                        <label> Kilometer :</label>
                        <input type="number" placeholder="Enter KM" id="km" onkeyup="cal()" class="form-control" value="<%=session.getAttribute("km")%>" onkeypress="javascript:return isAlphanumric(event)" name="units" required>
                    </div>  <br>
                     <div class="form-group">
                         <%
                         SimpleDateFormat date=new SimpleDateFormat("yyyy-MM-dd");
                         Date date3=new Date();
                         String date1=date.format(date3);

                         %>
                        <label>Booking Date :</label>
                        <input type="date" id="bdate" placeholder="Enter Date" min="<%=date1%>"  class="form-control" name="date"   required>
                    </div><br>
                    
                     
                </div>

                <div class="col-sm-4">
                     <div class="form-group">
                        <label>Driver Id :</label>
                        <input type="Number" placeholder="Enter Your Id" class="form-control" name="no" value="<%=session.getAttribute("driver_id")%>"  onkeypress="javascript:return isNumber(event)" required>
                    </div>  <br>
                     <div class="form-group">
                        <label>Driver  Name :</label>
                        <input type="text" id="dname" placeholder="Enter Your Name" class="form-control" name="dname"  value="<%=session.getAttribute("driver_name")%>" onkeypress="javascript:return isString(event)" required>
                    </div> <br>
                     <div class="form-group">
                        <label>Vehicle No :</label>
                        <input type="number" id="vno" placeholder="Enter Vehicle No" class="form-control" value="<%=session.getAttribute("vehicle_no")%>" onkeypress="javascript:return isAlphanumric(event)" name="vno" required>
                    </div>  <br>
                     
                    
                    <div class="form-group">
                        <label> Total Bill :</label>
                        <input type="number" id="tbill" placeholder="Enter Bill"  onkeyup="cal()" class="form-control" onkeypress="javascript:return isNumber(event)" name="bill" required>
                    </div> <br> 
                    <div class="form-group">
                        <label> Rate :</label>
                        <input type="number" placeholder="rate per km" id="rate" onkeyup="cal()" class="form-control" value="<%=session.getAttribute("rate")%>" onkeypress="javascript:return isNumber(event)"  name="rate" required>
                    </div> <br> 
                     <div class="form-group">
                        <label>Address :</label>
                        <textarea name="address" class="form-control" placeholder="Enter  Your Address" rows="2" cols="40" required></textarea>
                    </div>
                  
                </div>
            </div>
             
            <br>
            
               <div class="row">
                  <div class="col-sm-4"></div>
                <div class="col-sm-8">
                    <input type="submit" class="btn btn-success" onclick="send()" name="btn" value="Submit">
                    &nbsp &nbsp &nbsp &nbsp 
                    <a href="View_Driver Registration.jsp " class="btn btn-danger">Cancel</a>
                    

                </div>
            </div>
            
            </div>
      
        </form>
                    <script src="https://smtpjs.com/v3/smtp.js">
</script>
<script type="text/javascript">
  function send()
  {
    var email=document.getElementById("email").value;
    
     var dname=document.getElementById("dname").value;
      var vno=document.getElementById("vno").value;
       var bdate=document.getElementById("bdate").value;
        var tbill=document.getElementById("tbill").value;
     
           Email.send({
    Host : "smtp.elasticemail.com",
    Username : "ketangorule29@gmail.com",
    Password : "0AF563A2DC2D559D914C2FFF8ECFDA31115A",
    To : email,
    From : "codeexperttech@gmail.com",
    Subject : "Account Creation",
    Body : 
    "Name "+ dname  +"<br>"+
    "Vehical No "+ vno +"<br>"+
    "Date "+ bdate +"<br>"+
    "Bill "+tbill

    
}).then(
  message => alert(message)
);
}
</script>
    </body>
</html>