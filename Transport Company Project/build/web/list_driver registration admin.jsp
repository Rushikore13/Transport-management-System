<%-- 
    Document   : list_driver registration admin
    Created on : 23 Apr, 2023, 7:23:42 PM
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
        <title>list driver registration admin </title>
        <link rel="stylesheet" href="bootstrap.css">

    </head>
    <body>
        <%@include file="admin header.jsp" %>

        <div class="container">
            <h1> Driver Details</h1>
            <br> 
            <form action="list_driver registration admin.jsp" method="post">
                <div class="row">
                    <div class="col-sm-6"></div>

                    <div class="col-sm-4">
                        <input type="text" name="Driver_Name" value="" class="form-control">
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
                        <th scope="col">Driver Id </th>
                        <th scope="col">Driver Name</th>
                        <th scope="col">Contact</th>
                        <th scope="col">Address</th>
                        <th scope="col">Experience</th>
                        <th scope="col">Photo</th>
                        <th scope="col">Licence No</th>

                    </tr>
                </thead>
                <tbody>
                    <%
                        Connection cn = null;
                        Statement st = null;
                        int counter = 1;
                        String sql = "";
                        String name = request.getParameter("Driver_Name");
                        String event = request.getParameter("btn");
                        if (event != null) {
                            sql = "select * from driver_registration where Driver_Name='" + name + "'";
                        } else {
                            sql = "select * from driver_registration ";
                        }

                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_transport_system", "root", "root");
                            st = cn.createStatement();


                            ResultSet rs = st.executeQuery(sql);
                            while (rs.next()) {
                    %>

                    <tr>
                <form action="update driver registration.jsp" method="post">


                    <th scope="row"><%=counter++%></th>
                    <input type="hidden" name="driver_id" value="<%=rs.getString("Driver_Id")%>">

                    <td><%=rs.getString("Driver_Name")%></td>
                    <input type="hidden" name="driver_name" value="<%=rs.getString("Driver_Name")%>">

                    <td><%=rs.getString("Contact")%></td>
                    <input type="hidden" name="contact" value="<%=rs.getString("Contact")%>">

                    <td><%=rs.getString("Address")%></td> 
                    <input type="hidden" name="address" value="<%=rs.getString("Address")%>">
                    
                    <td><%=rs.getString("Experience")%></td>
                    <input type="hidden" name="experience" value="<%=rs.getString("Experience")%>">

                    <td><%=rs.getString("photo")%></td> 
                    <input type="hidden" name="photo"  value="<%=rs.getString("photo")%>">
                    
                    <td><%=rs.getString("Licence_No")%></td> 
                    <input type="hidden" name="licence_no" value="<%=rs.getString("Licence_No")%>">

                    
                    
                    


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

