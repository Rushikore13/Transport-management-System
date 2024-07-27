<%-- 
    Document   : list_admin_manage vehicle
    Created on : 25 Apr, 2023, 1:58:05 PM
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
        
        <link rel="stylesheet" href="bootstrap.css">

    </head>
    <body> 
        <%@include file="admin header.jsp" %>

        <div class="container">
            <h1>Vehicle Details </h1>
            <br><br>
            
            <form action="list_admin_manage vehicle.jsp" method="post">
                <div class="row">
                    <div class="col-sm-6"></div>

                    <div class="col-sm-4">
                        <input type="text" name="Cust_Name" value="" class="form-control">
                    </div>
                    <div class="col-sm-2">
                        <input type="submit" name="btn" value="search" class="btn btn-primary">
                        
                    </div>
                </div>
            </form>
                        <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        
                        <th scope="col">Vehicle No </th>
                        <th scope="col">Vehicle Year</th>
                        <th scope="col">Vehicle color</th>
                        <th scope="col">Vehicle Image</th>
                        <th scope="col">Booked Date</th>
                        <th scope="col">Model </th>
                        <th scope="col">Rate </th>
                        
                        <th scope="col">Driver Name</th>
                        <th scope="col">Route</th>
                        <th scope="col">Driver contact no</th>
                        
                    </tr>
                </thead>
<tbody>
                <%
                    Connection cn = null;
                    Statement st = null;
                    int counter = 1;
                    String sql="";
                    String name=request.getParameter("Cust_Name");
                    String event=request.getParameter("btn");
                    if(event!=null)
                                               {
                        sql="select * from manage_vehicle where Vehicle_No='"+name+"'";
                    }
                                       else{
                        sql="select * from manage_vehicle ";
                                       }
                    


                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_transport_system", "root", "root");
                        st = cn.createStatement();

                        ResultSet rs = st.executeQuery(sql);
                        while (rs.next()) {
                %>
                
                    <tr>
                        
<form action="update manage vehicle.jsp" method="post">

                        
                         <th scope="row"><%=counter++%></th>
                         
                    <input type="hidden" name="vehicle_no" value="<%=rs.getString("Vehicle_No")%>">
                    
                    <td><%=rs.getString("Vehicle_Year")%></td>
                    <input type="hidden" name="vehicle_year" value="<%=rs.getString("Vehicle_Year")%>"> 
                    
                    <td><%=rs.getString("Vehicle_Color")%></td>
                    <input type="hidden" name="vehicle_color" value="<%=rs.getString("Vehicle_Color")%>">
                    
                    <td><%=rs.getString("Vehicle_Img")%></td>
                    <input type="hidden" name="vehicle_img" value="<%=rs.getString("Vehicle_Img")%>"> 
                    
                    <td><%=rs.getString("Booked_date")%></td>
                    <input type="hidden" name="booked_date" value="<%=rs.getString("Booked_date")%>"> 
                    
                    <td><%=rs.getString("Model")%></td>
                    <input type="hidden" name="model" value="<%=rs.getString("Model")%>">
                    <td><%=rs.getString("Rate")%></td>
                    <input type="hidden" name="rate" value="<%=rs.getString("Rate")%>">
                    
                    
                    
                    <td><%=rs.getString("Driver_Name")%></td>
                    <input type="hidden" name="driver_name" value="<%=rs.getString("Driver_Name")%>"> 
                    
                    <td><%=rs.getString("Route")%></td>
                    <input type="hidden" name="route" value="<%=rs.getString("Route")%>">
                   
                    <td><%=rs.getString("Driver_Contact")%></td>
                    <input type="hidden" name="contact" value="<%=rs.getString("Driver_Contact")%>">
                   
                    <td><input type="submit" name="btn" value="Update" class="btn btn-success"></td>
                    <td><input type="submit" name="btn" value="Delete" class="btn btn-danger"></td>
                   
                    </form>
                    </tr>

                    <%
                            }
                        } catch (Exception ex) {
                        }


                    %>
                </tbody>

            </table>

        </div>


    </body>
</html>


