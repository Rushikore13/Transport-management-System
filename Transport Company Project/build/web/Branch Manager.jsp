<%-- 
    Document   : Branch Manager
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
             opacity: 0.8;
             margin-top: 40px;
             margin-bottom: 70px;
             border: 3px  solid black;
             background-color: white;
             height: 500px;
             width: 1000px;
             font-size: 14px;
         }
          
          h1
          {
              padding-top: 20px;
              font-size: 50px;
          }
           
            input[type=submit]
               {
                   color: darkred;
                text-align: center;
                display: inline;
                
                border-radius:1px; 
              
            
          
              width: 18%;
              font-size: 14px;
                 box-shadow: 4px 4px 2px 4px #888888;
               }
                .btn-danger
            {
                             color: darkred;
                text-align: center;
                display: inline;
                
                border-radius:1px; 
              
            height: 100%;
          
              width: 18%;
              font-size: 16px;
                 box-shadow: 4px 4px 2px 4px #888888;

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
         String sql="select Manager_Id from branch_manager";
         ResultSet rs= st.executeQuery(sql);
         while(rs.next())
         { 
           id=String.valueOf(Integer.parseInt(rs.getString("Manager_Id"))+1);
         }
        
        }catch(Exception ex)
        {
          out.println(ex);
        } 
    %>
       
        <form action="BranchManager" method="POST">
        <script src="validation.js"></script>
            <div class="container">
            <center><h1> Branch Manager</h1> </center>
            
            <br><br><br>
            
            <div class="row">
                <div  class="col-sm-2"></div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <label>Manager Id :</label>
                        <input type="Number" placeholder="Enter Your Id" class="form-control" name="no" value="<%=id%>" onkeypress="javascript:return isNumber(event)" required>
                    </div> 
                    <br>
                     <div class="form-group">
                        <label>Manager  Name :</label>
                        <input type="text" placeholder="Enter Manager Name" class="form-control" name="mname" onkeypress="javascript:return isString(event)" required>
                    </div>  <br>
                     <div class="form-group">
                        <label>Branch   Name :</label>
                        <input type="text" placeholder="Enter Manager Name" class="form-control" name="bname"onkeypress="javascript:return isString(event)" required>
                    </div> <br> 
                    
                </div>

                <div class="col-sm-4">
                     <div class="form-group">
                        <label>Contact :</label>
                        <input type="text" placeholder="Enter Mobile Number" class="form-control" name="cno" onkeypress="javascript:return isContactno(event)" maxlength="10" required>
                    </div>  <br>
                     <div class="form-group">
                        <label>Email:</label>
                        <input type="email" placeholder="Enter Your Email " class="form-control" name="email" required>
                    </div>   <br>
                    <div class="form-group">
                        <label>Address :</label>
                        <textarea name="address" class="form-control" placeholder="Enter Address" rows="2" cols="10" required></textarea>
                    </div> <br>
                   
                </div>
            </div>
            <br><br>
            
                                <div class="row">
                                    <div class="col-sm-4"></div>
                <div class="col-sm-8">
                    <input type="submit" class="btn btn-info" name="btn" value="Insert">
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    
                    <a href="Branch Manager.jsp" class="btn btn-danger">Cancel</a>           
                </div>
            </div>
            
            </div>
      
        </form>
    </body>
</html>