<%-- 
    Document   : dynamic page
    Created on : 1 Apr, 2023, 1:37:44 PM
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
        <title> Page</title>
        <link rel="stylesheet" href="bootstrap.css">
        <style>
            .jumbotron
            {
                font-family: Bahnschrift Condensed;
            }
        </style>
        
        
    </head>
    <body>
        <div class="container">
            <h1>List Driver Details</h1>
            <br>
      
      <%   
          
          Connection cn=null;
          Statement st=null;
           int counter=1;
      try {
                        Class.forName("com.mysql.jdbc.Driver");
                        cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_transport_system", "root", "root");
                        st = cn.createStatement();
                        String sql = "select * from driver_registration";
                        ResultSet rs = st.executeQuery(sql);
                        while (rs.next()) 
            {

      %>
     <div class="jumbotron">
         <b>
                <div class="row">
                    <div class="col-sm-3">
                        <img src="" width="200" height="200"/>
                    </div>
                    <div class="col-sm-3">
                        <h4>Driver_Id : <%=rs.getString("Driver_Id")%></h4>
                        <h4>Driver_Name : <%=rs.getString("driver_name")%></h4>
                        <h4>Contact : <%=rs.getString("contact")%></h4>
                        <h4>Address : <%=rs.getString("address")%></h4>
                        <h4>Experience : <%=rs.getString("experience")%></h4>
                        <h4>Licence_No : <%=rs.getString("licence_no")%></h4>
                        
                        <input type="submit" name="btn" value="Call" class="btn btn-primary">
                    </div>
                        
                </div>
                        
         </b>
            </div>
    <%
        }
     }catch(Exception ex)
    {
    out.println(ex.toString());

     }
    %>
            
  
        </div>
    </body>
</html>
