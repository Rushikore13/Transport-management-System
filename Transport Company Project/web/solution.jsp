<%-- 
    Document   : solution
    Created on : 27 Apr, 2023, 8:09:28 PM
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
        <title>Your Solution</title>
        <link rel="stylesheet" href="bootstrap.css">
        <style type="text/css">
           
         body
         {
             
             background-image: url("Project Images/feedback1.jpg");
             background-size:cover;
             margin-top: 110px;

         }
         .container
         {
             box-shadow: 2px 10px 8px 10px #6D7B8D;
             background-color: white;
             border: 3px  solid black;
             opacity: 0.8;
             height: 500px;
             width: 400px;
             margin-top: 10px;
                          font-size: 14px;


         }
          
          h1
          {
              padding-top: 30px;
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
                .btn-danger
            {
                              width: 18%;

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
         String sql="select Cust_Id from query";
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
        <form action="Query" method="POST">
        <script src="validation.js"></script>
            <div class="container">
            <center><h1> Your Solution</h1> </center>
            
            <br><br>
            
            <div class="row">
                <div  class="col-sm-2"></div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <label>Customer Id :</label>
                        <input type="Number" placeholder="Enter Your Id" class="form-control" name="id"  value="<%=id%>" onkeypress="javascript:return isNumber(event)" required>
                    </div> <BR> 
                     <div class="form-group">
                        <label>Customer Name :</label>
                        <input type="text" placeholder="Enter Your Name" class="form-control" name="name"onkeypress="javascript:return isString(event)" required>
                    </div> <br>
                    <br>
                </div>

                <div class="col-sm-4">
                    <div class="form-group">
                        <label>Contact :</label>
                        <input type="text" placeholder="Enter Mobile Number" class="form-control" name="contact" onkeypress="javascript:return isContactno(event)" maxlength="10" required>
                    </div><br>
                    <div class="form-group">
                        <label>Email :</label>
                        <input type="email" placeholder="Enter Your Email" class="form-control" name="email"  required>
                    </div><br>
                </div>
            </div>
                  <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
                    <div class="form-group">
                        <label>Your Solution :</label>
                        <textarea name="Query" class="form-control" placeholder="" rows="4" cols="40" required></textarea>
                    </div>
                </div>
            </div>
            <br><br>
            
                                <div class="row">
                                    <div class="col-sm-4"></div>
                <div class="col-sm-8">
                    <input type="submit" class="btn btn-info" name="btn" value="Submit">&nbsp &nbsp &nbsp &nbsp 
                    <a href="index.html " class="btn btn-danger">Cancel</a>
                    

                </div>
            </div>
            
            </div>
        
        </form>
    </body>
</html>
