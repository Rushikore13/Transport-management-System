<%-- 
    Document   : list_Manage vehicle
    Created on : 8 Mar, 2023, 3:04:20 PM
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
        <title>List Manage Vehicle </title>
        <link rel="stylesheet" href="bootstrap.css">
        <style type="text/css">
            .jumbotron{
                  
                   height: 300px;
                   width: 120%;
                    background-color: white;
                    margin-left: 30px;
                    padding-bottom: 10px;
                     padding-left: 10px;
                    padding-right: 5px;
                   box-shadow: 2px 2px 1px 2px #888888;
                    border: black 1px solid; 
               } 
               input[type=submit]
          {
              width: 60%;
              font-size: 15px;
                 box-shadow: 4px 4px 2px 4px #888888;
          }
           body{
              background-color: whitesmoke;
          }
          img{
              border: black 3px solid; 
          }
          .vehicle
          {
              width: 35%;
              display: inline-block;
              margin:60px;
              margin-top: 10px;
              margin-bottom: 0px;
              
          }
/*          .btn-danger{
              width: 68%;
              height: 120%;
              font-size: 15px;
              font-weight: 500;
          }*/
        </style>
    </head>
    <body>
         <%@include file="user header.jsp" %>
        <center> <h2 style="font-family:">Vehicle Details</h2></center>
          <%
    Connection cn=null;
   Statement st=null;
   int counter = 1;
  
                 try {
                        Class.forName("com.mysql.jdbc.Driver");
                        cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_transport_system", "root", "root");
                        st = cn.createStatement(); 
                       String sql="select * from manage_vehicle where Driver_Name='"+session.getAttribute("driver_name") +"' ";  
                        

                        ResultSet rs = st.executeQuery(sql);
                        while (rs.next()) {
                %>
      
           <div class="vehicle">

        <div class="jumbotron" style="background-color: skyblue">
            <form action="View_Manage_Vehicle" 
                  method="POST">
            <div class="row">
                <div class="col-sm-7">
                   
                    <img src="<%=rs.getString("Vehicle_img")%>" width="300px" height="150px">
                     
               
                    </div>
                <div class="col-sm-5">
                   
                 
                    <h4> Vehicle No :<%=rs.getString("Vehicle_No")%></h4>
                  <input type="hidden" name="vehicle_no"  value="<%=rs.getString("Vehicle_No")%>">

                    <h4> Vehicle Year :<%=rs.getString("Vehicle_Year")%></h4>
                    <h4>Vehicle Color :<%=rs.getString("Vehicle_Color")%></h4>
                    <h4>Rate:<%=rs.getString("rate")%></h4>
                    <input type="hidden" name="rate"  value="<%=rs.getString("rate")%>">

                    <h4> Model :<%=rs.getString("Model")%></h4>
                    <input type="hidden" name="vehicle_no"  value="<%=rs.getString("Model")%>">

                    <h4> Driver Name :<%=rs.getString("Driver_Name")%></h4>
                    <input type="hidden" name="driver_name" value="<%=rs.getString("Driver_Name")%>">


                    
         
       
                    
                </div>
            </div><br>
                     <div class="row">
                    <div class="col-sm-3"></div>
                    <div class="col-sm-4">
                        <input type="submit" class="btn btn-success" name="btn1"  value="Select">
                        
                        </div>
                    <div class="col-sm-4">

                        <a href="View_Driver Registration.jsp " class="btn btn-danger" style="font-weight: 1200x; width: 60%;
              font-size: 14px;
                 box-shadow: 4px 4px 2px 4px #888888;">Cancel</a>
                
                               
                        </div>    
                    <div class="col-sm-3"></div>
                </div>
             </form>
        </div>
        </div>         
          <%
           }
       }catch(Exception ex)
       {
           out.println(ex.toString());
       }
     

%>
    </body>
</html>