<%-- 
    Document   : Transport Information
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
        <title>Transport Information </title>
                <link rel="stylesheet" href="bootstrap.css">
                <style type="text/css">
                      
        
         .container
         {
             opacity: 0.8;
             margin-top: 10px;
             border: 3px  solid black;
             padding-top: 30PX;
             padding-left: 60px;
             padding-right: 60px;
             background-color: white;
             height: 600px;
             width: 700px;
             box-shadow: 2px 10px 8px 10px #6D7B8D;
             font-size: 12px
         }
         input[type=submit]
               {
                   cursor: pointer;
                   width: 24%;
               }
               body
               {
                   background-size: cover;
                background-image: url("Project Images/New folder (2)/img2.jpg");

               }
               .btn-danger{
                   width: 24%;
               }
                </style>
    </head>
    <body> 
        
        <%@include file="admin header.jsp" %>
        <br>
        <%Connection cn=null;
            Statement st=null;
            String id="1";
            try
        {
         Class.forName("com.mysql.jdbc.Driver");
         cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_transport_system","root","root");
         st=cn.createStatement();
         String sql="select uni_Slip_No from transport_info ";
         ResultSet rs= st.executeQuery(sql);
         while(rs.next())
         { 
           id=String.valueOf(Integer.parseInt(rs.getString("uni_Slip_No"))+1);
         }
        
        }catch(Exception ex)
        {
          out.println(ex);
        }%>
        <form action="Transport_Info" method="POST">
                <script src="validation.js"></script>
            <div class="container">
                <center> <h1> Transport Information</h1></center>
                <BR><br>
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label>Unique Slip No :</label>
                        <input type="Number" placeholder="Enter Your Id" class="form-control" name="no" value="<%=id%>" onkeypress="javascript:return isNumber(event)" required>
                    </div>  
                    <div class="form-group">
                        <label>Vehicle No :</label>
                        <input type="text" placeholder="Enter Vehicle No" class="form-control" name="vno"  onkeypress="javascript:return isAlphanumric(event)" required>
                    </div>
                    <div class="form-group">
                        <label>Model :</label>
                        <input type="text" placeholder="Enter Model" class="form-control" name="mname" onkeypress="javascript:return isAlphanumric(event)" required>
                    </div> 
                    <div class="form-group">
                        <label>Kilometer</label>
                        <input type="text" placeholder="Enter Units" class="form-control" name="units" onkeypress="javascript:return isAlphanumric(event)" required>
                    </div>  
                    <div class="form-group">
                        <label>  Destination :</label>
                        <textarea name="destination" class="form-control" placeholder="Enter Destination Address" rows="3" cols="15" required></textarea>
                     </div>
                     <div class="form-group">
                        <label>Contact :</label>
                        <input type="text" placeholder="Enter Mobile Number" class="form-control" name="cno" onkeypress="javascript:return isContactno(event)" maxlength="10" required>
                    </div>  
                </div>
                <div class="col-sm-6">
                     <div class="form-group">
                        <label>Trip Starting Date:</label>
                        <input type="date" placeholder="Enter Date" class="form-control" name="date" required>
                    </div>  
                     <div class="form-group">
                        <label>Trip Ending Date :</label>
                        <input type="date" placeholder="Enter Date " class="form-control" name="date" required>
                    </div>  
                     <div class="form-group">
                        <label>Driver Name:</label>
                        <input type="text" placeholder="Enter Driver Name" class="form-control" name="dname" onkeypress="javascript:return isString(event)" required>
                    </div> 
                     <div class="form-group">
                        <label>Customer Name:</label>
                        <input type="text" placeholder="Enter Customer Name" class="form-control" name="cname" onkeypress="javascript:return isString(event)" required>
                    </div> 
                     <div class="form-group">
                        <label> Customer Address :</label>
                        <textarea name="caddress" class="form-control" placeholder="Enter Customer Address" rows="3" cols="15" required></textarea>
                     </div>
                        <div class="form-group">
                        <label>Amount :</label>
                        <input type="text" placeholder="Enter Transport Amount" class="form-control" name="amount" onkeypress="javascript:return isFloat(event)" required>
                    </div>  
                    </div> 
                </div>
                    <br><br><br>
            <div class="row">
                <div class="col-sm-4"></div>

                <div class="col-sm-8">
                    <input type="submit" class="btn btn-primary" name="btn" value="Insert"> 
                    &nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp 
                    
                     <a href="list_booking admin.jsp " class="btn btn-danger">Cancel</a>

                </div>
            </div>
        </div>
        </form>
    </body>
    
</html>
