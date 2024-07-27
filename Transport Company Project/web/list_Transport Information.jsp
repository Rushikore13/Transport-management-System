<%-- 
    Document   : list_Transport Information
    Created on : 9 Mar, 2023, 1:26:56 PM
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
        <title>list_Transport Information</title>
        <link rel="stylesheet" href="bootstrap.css">
    </head>
    <body>
        <%@include file="user header.jsp" %>
        <div class="container">
             <h1>Transport Information List</h1>
            <br> 
            <form action="list_Transport Information.jsp" method="post">
                <div class="row">
                    <div class="col-sm-6"></div>

                    <div class="col-sm-4">
                        <input type="text" name="Cust_Name" value="" class="form-control">
                    </div>
                    <div class="col-sm-2">
                        <input type="submit" name="btn" value="Search" class="btn btn-primary">
                        
                    </div>
                </div>
            </form>
                        <br>
            <table class="table table-bordered">
                <thead>
                    <tr>

                        <th scope="col">#</th>
                        <th scope="col">Unique Slip No</th>
                        <th scope="col">Vehicle No</th>
                        <th scope="col">Model</th>
                        <th scope="col">Units</th>
                        <th scope="col">Destination</th>
                        <th scope="col">Contact</th>
                        <th scope="col">Trip Starting Date</th>
                        <th scope="col">Trip Ending Date</th>
                        <th scope="col">Driver Name</th>
                        <th scope="col">Customer Name</th>
                        <th scope="col">Customer Address</th>
                        <th scope="col">Amount</th>
                        
                    </tr>
                </thead>

              <%
                    Connection cn = null;
                    Statement st = null;
                    int counter = 1;
                    String sql="";
                    String name=request.getParameter("Cust_Name");
                    String event=request.getParameter("btn");
                    if(event!=null)
                                               {
                        sql="select * from transport_info where Cust_Name='"+name+"'";
                    }
                                       else{
                        sql="select * from transport_info ";
                                       }

                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_transport_system", "root", "root");
                        st = cn.createStatement();
                        

                        ResultSet rs = st.executeQuery(sql);
                        while (rs.next()) {
                %>
                <tbody>
                    <tr>
                <form action="update transport information.jsp" method="post">
                    <th scope="row"><%=counter++%></th>
                    
                    <td><%=rs.getString("uni_Slip_No")%></td>
                    <input type="hidden" name="slip_no" value="<%=rs.getString("uni_Slip_No")%>">

                    <td><%=rs.getString("Vehicle_No")%></td>
                    <input type="hidden" name="vehicle_no" value="<%=rs.getString("Vehicle_no")%>">

                    <td><%=rs.getString("Model")%></td>
                    <input type="hidden" name="model" value="<%=rs.getString("Model")%>">

                    <td><%=rs.getString("Units")%></td> 
                    <input type="hidden" name="units" value="<%=rs.getString("Units")%>">

                    <td><%=rs.getString("Destination")%></td>
                    <input type="hidden" name="destination" value="<%=rs.getString("Destination")%>">

                    <td><%=rs.getString("Contact")%></td>
                    <input type="hidden" name="contact" value="<%=rs.getString("Contact")%>">

                    <td><%=rs.getString("Trip_Start_Date")%></td>
                    <input type="hidden" name="start_date" value="<%=rs.getString("Trip_Start_Date")%>">

                    <td><%=rs.getString("Trip_End_Date")%></td>
                    <input type="hidden" name="end_date" value="<%=rs.getString("Trip_End_Date")%>">

                    <td><%=rs.getString("Driver_Name")%></td>
                    <input type="hidden" name="driver_name" value="<%=rs.getString("Driver_Name")%>">

                    <td><%=rs.getString("Cust_Name")%></td>
                    <input type="hidden" name="customer_name" value="<%=rs.getString("Cust_Name")%>">

                    <td><%=rs.getString("Cust_Address")%></td>
                    <input type="hidden" name="address" value="<%=rs.getString("Cust_Address")%>">

                    <td><%=rs.getString("Transport_Amount")%></td>
                    <input type="hidden" name="amount" value="<%=rs.getString("Transport_Amount")%>">

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
