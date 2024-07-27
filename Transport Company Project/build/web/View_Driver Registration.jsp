<%-- 
    Document   : list_Driver Registration
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
        <title>Driver Details </title>
        <link rel="stylesheet" href="bootstrap.css">
        <style type="text/css">
            .jumbotron
            {

                height: 300px;
                width: 120%;
              
                margin-left: 30px;
                padding-top: 50px;
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
            .btn-danger
            {
                                

            }
            body{
                background-color: whitesblmoke;
            }
            img{
                border: black 3px solid; 
            }
            .vehicle
            {
                width: 35%;
                display: inline-block;
                margin:60px;
                margin-top: 50px;
                margin-bottom: 0px;

            }

        </style>
    </head>
    <body>
        <%@include file="user header.jsp" %>
        <br><br>
    <center><h1 style="font-family:">Driver Details</h1></center>
    <%
        Connection cn = null;
        Statement st = null;
        int counter = 1;
       

        try {
            Class.forName("com.mysql.jdbc.Driver");
            cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_transport_system", "root", "root");
            st = cn.createStatement();
    String sql="select * from driver_registration ";


            ResultSet rs = st.executeQuery(sql);
            while (rs.next()) {
    %>

    <div class="vehicle">
        
        <form action="View_Driver_Registration" method="POST">

        <div class="jumbotron" style="background-color: skyblue">
<!--            <form action="list_Manage vehicle.jsp" method="POST">-->
                <div class="row">
                    <div class="col-sm-7">

                        <img src="<%=rs.getString("photo")%>" width="300px" height="150px">


                    </div>
                    <div class="col-sm-5">


                        <h4>Driver Id  : <%=rs.getString("Driver_Id")%></h4>
                    <input type="hidden" name="driver_id" value="<%=rs.getString("Driver_Id")%>">

                        <h4> Driver Name : <%=rs.getString("Driver_Name")%></h4>
                         <input type="hidden" name="driver_name" value="<%=rs.getString("Driver_Name")%>">

                        
                        <h4> Contact : <%=rs.getString("Contact")%></h4>
                        
                        <h4> Experience : <%=rs.getString("Experience")%></h4>
                        
                        <h4> Licence No : <%=rs.getString("Licence_No")%></h4>
                    <input type="hidden" name="licence_no" value="<%=rs.getString("Licence_No")%>">


                    </div>
                </div><br>
                <div class="row">
                    <div class="col-sm-3"></div>
                    <div class="col-sm-4">
                        <input type="submit" class="btn btn-success" name="btn1" onClick="parent.location='list_Manage vehicle.jsp'" value="Select">
                        
                        </div>
                    <div class="col-sm-4">

                            <a href="index.html " class="btn btn-danger" style="font-weight: 1200x; width: 60%;
              font-size: 14px;
                 box-shadow: 4px 4px 2px 4px #888888;">Cancel</a>
                        </div>    
                    <div class="col-sm-3"></div>
                </div>
<!--            </form>-->
        </div>
        </form>
    </div>         
    <%
            }
        } catch (Exception ex) {
            out.println(ex.toString());
        }


    %>
</body>
</html>