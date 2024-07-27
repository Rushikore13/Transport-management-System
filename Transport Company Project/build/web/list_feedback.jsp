<%-- 
    Document   : list_feedback
    Created on : 23 Mar, 2023, 5:49:49 PM
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
        <style>
            h1{
            }
        </style>
    </head>
    
    <body> 
        
<%@include file="admin header.jsp" %>
        <div class="container">
    <center>   <h1>Feedback Details</h1></center>
            <br> 
            <form action="list_feedback.jsp" method="post">
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
                        <th scope="col">Email Address</th>
                        <th scope="col">contact </th>
                        <th scope="col">Write your Feedback...</th>
                        
                        
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
                        sql="select * from Feedback where Cust_Name='"+name+"'";
                    }
                                       else{
                        sql="select * from Feedback";
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
                        
                        <td><%=rs.getString("Cust_Id")%></td>
                        
                        <td><%=rs.getString("Cust_Name")%></td>
                         
                       <td><%=rs.getString("Email")%></td>
                         
                       
                        <td><%=rs.getString("Contact")%></td> 
                         
                       
                        <td><%=rs.getString("Feedback")%></td>
                        

                       
                        
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



