<%-- 
    Document   : list_customer registration
    Created on : 15 Apr, 2023, 10:19:07 PM
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
        <%@include file="user header.jsp" %>
        

        <div class="container">
            <h2>Customer Details </h2>
            <br> 
           <form action="list_customer registration.jsp" method="post">
                <div class="row">
                    <div class="col-sm-6"></div>

                    <div class="col-sm-4">
                        <input type="text" name="First_Name" value="" class="form-control">
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
                        <th scope="col">Customer Id</th>
                        <th scope="col">First Name</th>
                        <th scope="col">Last Name</th>
                        <th scope="col">Contact</th>
                        <th scope="col">Email</th>
                        <th scope="col">Address</th>

                    </tr>
                </thead>
<tbody>
                <%
                    Connection cn = null;
                    Statement st = null;
                    int counter = 1;
                    String sql="";
                    String name=request.getParameter("First_Name");
                    String event=request.getParameter("btn");
                    if(event!=null)
                                               {
                        sql="select * from customer_registration where First_Name='"+name+"'";
                    }
                                       else{
                        sql="select * from customer_registration ";
                                       }

                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_transport_system", "root", "root");
                        st = cn.createStatement();
                        

                        ResultSet rs = st.executeQuery(sql);
                        while (rs.next()) {
                %>
                    <tr>
                        <form action="update customer registration.jsp" method="post">


                        <th scope="row"><%=counter++%></th>
                        <input type="hidden" name="customer_id" value="<%=rs.getString("Cust_Id")%>">
                        
                        <td><%=rs.getString("First_Name")%></td>
                        <input type="hidden" name="first_name" value="<%=rs.getString("First_Name")%>">
                        
                        <td><%=rs.getString("Last_Name")%></td>
                         <input type="hidden" name="last_name" value="<%=rs.getString("Last_Name")%>">
                         
                        <td><%=rs.getString("Contact")%></td>
                         <input type="hidden" name="contact" value="<%=rs.getString("Contact")%>">
                         
                          <td><%=rs.getString("Email")%></td> 
                         <input type="hidden" name="email" value="<%=rs.getString("Email")%>">
                       
                        <td><%=rs.getString("Address")%></td>
                        <input type="hidden" name="address" value="<%=rs.getString("Address")%>">

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
