<%-- 
    Document   : list_payment
    Created on : 18 Apr, 2023, 9:55:01 AM
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
            <h1>Payment Details </h1>
            <br><br>
            
            <form action="list_payment.jsp" method="post">
                <div class="row">
                    <div class="col-sm-6"></div>

                    <div class="col-sm-4">
                        <input type="text" name="payer_name" value="" class="form-control">
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
                        <th scope="col">Payer Id</th>
                        <th scope="col">Payer Name</th>
                        <th scope="col">Email</th>
                        <th scope="col">Select Card Type</th>
                        <th scope="col">Card Number</th>
                        <th scope="col">Card expiry Month</th>
                        <th scope="col">Card expiry year</th>
                        <th scope="col">Enter CVV</th>
                        
                    </tr>
                </thead>
<tbody>
                <%
                    Connection cn = null;
                    Statement st = null;
                    int counter = 1;
                    String sql="";
                    String name=request.getParameter("payer_name");
                    String event=request.getParameter("btn");
                    if(event!=null)
                                               {
                        sql="select * from Payment where payer_name='"+session.getAttribute("name") +"'";
                    }
                                       else{
                        sql="select * from Payment";
                                       }
                    


                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_transport_system", "root", "root");
                        st = cn.createStatement();

                        ResultSet rs = st.executeQuery(sql);
                        while (rs.next()) {
                %>
                
                    <tr>
                       


                        <th scope="row"><%=counter++%></th>
                        
                        <td><%=rs.getString("payer_id")%></td>
                        <td><%=rs.getString("payer_name")%></td>
                       <td><%=rs.getString("email")%></td>
                        <td><%=rs.getString("card_type")%></td> 
                        <td><%=rs.getString("card_no")%></td>
                        <td><%=rs.getString("card_expiry_month")%></td>
                        <td><%=rs.getString("card_expiry_year")%></td>
                        <td><%=rs.getString("cvv")%></td>

                    <td><input type="submit" name="btn" value="Cancel" class="btn btn-danger"></td>
                        
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

