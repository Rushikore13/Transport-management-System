<%-- 
    Document   : update branch manager
    Created on : Feb 10, 2023, 8:05:33 PM
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
        <title>Branch Manager</title>
                    <link rel="stylesheet" href="bootstrap.css">
    <style type="text/css">
        
         
         .container
         {
             
             box-shadow: 2px 10px 8px 10px #6D7B8D;
             opacity: 0.9;
             margin-top: 40px;
             border: 3px  solid black;
             background-color: white;
             height: 500px;
             width: 1000px;
             margin-bottom: 100px;
             font-size: 14px;
         }
          
          h1
          {
              font-size: 50px;
              padding-top: 20px;
          }
           
            input[type=submit]
               {
                   color: black;
                   cursor: pointer;
                   width: 22%;
               }
               body
               {
                   
                   background-size: 1600px 850px;
                   background-image: url("Project Images/branch.jpg");

               }
              
                        </style>
    </head>
    <body> 
        <%@include file="admin header.jsp" %>
        <form action="BranchManager" method="POST">
        <script src="validation.js"></script>
            <div class="container">
            <center><h1> Branch Manager</h1> </center>
            
            <br><br>
            
            <div class="row">
                <div  class="col-sm-2"></div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <label>Manager Id :</label>
                        <input type="text" placeholder="Enter Your Id" class="form-control" name="no" value="<%=request.getParameter("Manager_Id")%>" onkeypress="javascript:return isNumber(event)" required>
                    </div>  <br> 
                     <div class="form-group">
                        <label>Manager  Name :</label>
                        <input type="text" placeholder="Enter Manager Name" class="form-control"  value="<%=request.getParameter("Manager_Name")%>"name="mname" onkeypress="javascript:return isString(event)" required>
                    </div>  <br>
                     <div class="form-group">
                        <label>Branch   Name :</label>
                        <input type="text" placeholder="Enter Manager Name" value="<%=request.getParameter("Branch_Name")%>" class="form-control" name="bname" onkeypress="javascript:return isString(event)" required>
                    </div>  <br>
                    
                </div>

                <div class="col-sm-4">
                     <div class="form-group">
                        <label>Contact :</label>
                        <input type="text" placeholder="Enter Mobile Number" value="<%=request.getParameter("Contact")%>"class="form-control" name="cno" onkeypress="javascript:return isContactno(event)" maxlength="10" required>
                    </div>  <br>
                     <div class="form-group">
                        <label>Email:</label>
                        <input type="email" placeholder="Enter Your Email " value="<%=request.getParameter("Email")%>"class="form-control" name="email" required> 
                    </div>   <br>
                    <div class="form-group">
                        <label>Address :</label>
                        <textarea name="address" class="form-control" placeholder="Enter Address"  rows="2" cols="10" required><%=request.getParameter("Address")%></textarea>
                    </div> <br>
                   
                </div>
            </div>
            <br><br>
            
                                <div class="row">
                                    <div class="col-sm-4"></div>
                <div class="col-sm-8">
                    <input type="submit" class="btn btn-success" name="btn" value="Update">  
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    <input type="submit" class="btn btn-warning" name="btn" value="Delete">
                    
                    

                </div>
            </div>
            
            </div>
      
        </form>
    </body>
</html>