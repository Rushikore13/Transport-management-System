<%-- 
    Document   : Customer Registration
    Created on : Feb 15, 2023, 9:54:17 PM
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
        <title>Customer Registration </title>
                <link rel="stylesheet" href="bootstrap.css">
                <style type="text/css">
                    
             body
         {
             background-image: url("Project Images/customer.jpg");
             background-size: cover;
             margin-top: 110px;
         }
         .container
         {
             background-color:white;
             border: 3px  solid black;
             opacity: 0.8;
             height: 500px;
             width: 1000px;
             font-size: 14px;
             
         }
          
          h1
          {
              color:black;
          }
           .btn-success
            {
                color: gray;
                text-align: center;
                display: inline;
                font-size: 14px;
                border-radius:1px; 
              
         
            }
            input[type=submit]
               {
                   color: black;
                   cursor: pointer;
                   width: 20%;
               }
               .btn-danger{
                   width: 20%;
               }
              
                        </style>
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
         String sql="select Cust_Id from  customer_registration";
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
        <form action="CustomerRegistration" method="POST">
            
        <script src="validation.js"></script>
            <div class="container">
            <center><h1> Customer Registration</h1> </center>
            
            <br><br>
            
            <div class="row">
                <div  class="col-sm-2"></div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <label>Customer Id :</label>
                        <input type="Number" placeholder="Enter Your Id" class="form-control" name="no" value="<%=id%>" onkeypress="javascript:return isNumber(event)" required>
                    </div>  
                     <div class="form-group">
                        <label>First Name :</label>
                        <input type="text" placeholder="Enter Your Name" class="form-control" name="fname" onkeypress="javascript:return isString(event)" required>
                    </div> 
                    <div class="form-group">
                        <label>Last Name :</label>
                        <input type="text" placeholder="Enter Your Name" class="form-control" name="lname" onkeypress="javascript:return isString(event)" required>
                    </div> 
                   
                </div>

                <div class="col-sm-4">
                     
                     <div class="form-group">
                        <label>Email :</label>
                        <input type="Email" placeholder="Enter Your Email" class="form-control" name="email" required>
                    </div>  
                      <div class="form-group">
                        <label>Contact :</label>
                        <input type="text" placeholder="Enter Mobile Number" class="form-control" name="cno" onkeypress="javascript:return isContactno(event)" maxlength="10" required>
                    </div> 
                    <div class="form-group">
                        <label>Address :</label>
                        <textarea name="address" class="form-control" placeholder="Enter Address" rows="2" cols="20" required></textarea>
                    </div>
                </div>
            </div>
            
            <br><br>
            
                                <div class="row">
                                    <div class="col-sm-4"></div>
                <div class="col-sm-8">
                    
                        <input type="submit"class="btn btn-info" name="btn" value="Register">&nbsp&nbsp&nbsp&nbsp&nbsp
                     <a href="index.html" class="btn btn-danger">Cancel</a>
                </div>
            </div>
            
            </div>
      
        </form>
    </body>
</html>