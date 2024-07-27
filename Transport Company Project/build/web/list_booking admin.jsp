<%-- 
    Document   : list_booking user
    Created on : 23 Mar, 2023, 2:43:17 PM
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
            <h1>Booking Details </h1>
            <br><br>
            
            <form action="list_booking admin.jsp" method="post">
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
                        <th scope="col">#</th>
                        <th scope="col">Customer Id</th>
                        <th scope="col">Customer Name</th>
                        <th scope="col">Contact</th>
                        <th scope="col">Vehicle No</th>
                        <th scope="col">Units</th>
                        <th scope="col">Address</th>
                        <th scope="col">Driver Id</th>
                        <th scope="col">Driver  Name</th>
                        <th scope="col">Total Bill</th>
                        <th scope="col">Booking Date</th>
                        
                        <th scope="col">Button</th>
                        
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
                        sql="select * from booking where Cust_Name='"+name+"'";
                    }
                                       else{
                        sql="select * from booking ";
                                       }
                    


                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_transport_system", "root", "root");
                        st = cn.createStatement();

                        ResultSet rs = st.executeQuery(sql);
                        while (rs.next()) {
                %>
                
                    <tr>
                        
                    <form action="update booking user.jsp" method="post">

                        
                         <th scope="row"><%=counter++%></th>
                         
                     <td><%=rs.getString("Cust_Id")%></td>
                    <input type="hidden" name="id" value="<%=rs.getString("Cust_Id")%>">
                    
                    <td><%=rs.getString("Cust_Name")%></td>
                    <input type="hidden" name="Cname" value="<%=rs.getString("Cust_Name")%>"> 
                    
                    <td><%=rs.getString("Contact")%></td>
                    <input type="hidden" name="contact" value="<%=rs.getString("Contact")%>">
                    
                    <td><%=rs.getString("Vehicle_No")%></td>
                    <input type="hidden" name="Vehicle_No" value="<%=rs.getString("Vehicle_no")%>"> 
                    
                    <td><%=rs.getString("Units")%></td>
                    <input type="hidden" name="units" value="<%=rs.getString("Units")%>"> 
                    
                    
                    <td><%=rs.getString("Address")%></td>
                    <input type="hidden" name="address" value="<%=rs.getString("Address")%>">
                    
                    <td><%=rs.getString("Driver_Id")%></td>
                    <input type="hidden" name="Did" value="<%=rs.getString("Driver_Id")%>"> 
                    
                    <td><%=rs.getString("Driver_Name")%></td>
                    <input type="hidden" name="Dname" value="<%=rs.getString("Driver_Name")%>"> 
                    
                    <td><%=rs.getString("T_Bill")%></td>
                    <input type="hidden" name="Tbill" value="<%=rs.getString("T_Bill")%>">
                    
                     <td><%=rs.getString("bdate")%></td>
                    <input type="hidden" name="date" value="<%=rs.getString("bdate")%>"> 
                   
                    <td>
                    <a href="Transport Information.jsp " class="btn btn-danger">Cancel</a>
                    </td>
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

