<%-- 
    Document   : list_Branch Manager
    Created on : 7 Mar, 2023, 5:49:00 PM
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
        <title>list Branch Manager Page</title>
        <link rel="stylesheet" href="bootstrap.css">

    </head>
    <body>
        <%@include file="admin header.jsp" %>

        <div class="container">
            <h1>Branch Manager List</h1>
            <br> 
            <form action="list_Branch Manager.jsp" method="post">
                <div class="row">
                    <div class="col-sm-6"></div>

                    <div class="col-sm-4">
                        <input type="text" name="Manager_Name" value="" class="form-control">
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
                        <th scope="col">Manager ID</th>
                        <th scope="col">Manager Name</th>
                        <th scope="col">Branch Name</th>
                        <th scope="col">Address</th>
                        <th scope="col">Email</th>
                        <th scope="col">Contact</th>
                    </tr>
                </thead>
<tbody>
                <%
                    Connection cn = null;
                    Statement st = null;
                    int counter = 1;
                    String sql="";
                    String name=request.getParameter("Manager_Name");
                    String event=request.getParameter("btn");
                    if(event!=null)
                                               {
                        sql="select * from branch_manager where Manager_Name='"+name+"'";
                    }
                                       else{
                        sql="select * from branch_manager ";
                                       }

                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_transport_system", "root", "root");
                        st = cn.createStatement();
                        

                        ResultSet rs = st.executeQuery(sql);
                        while (rs.next()) {
                %>
                
                    <tr>
                        <form action="update branch manager.jsp" method="post">


                        <th scope="row"><%=counter++%></th>
                        <input type="hidden" name="Manager_Id" value="<%=rs.getString("Manager_Id")%>">
                        
                        <td><%=rs.getString("Manager_Name")%></td>
                        <input type="hidden" name="Manager_Name" value="<%=rs.getString("Manager_Name")%>">
                        
                        <td><%=rs.getString("Branch_Name")%></td>
                         <input type="hidden" name="Branch_Name" value="<%=rs.getString("Branch_Name")%>">
                       
                        <td><%=rs.getString("Address")%></td>
                         <input type="hidden" name="Address" value="<%=rs.getString("Address")%>">
                       
                        <td><%=rs.getString("Email")%></td> 
                         <input type="hidden" name="Email" value="<%=rs.getString("Email")%>">
                       
                        <td><%=rs.getString("Contact")%></td>
                        <input type="hidden" name="Contact" value="<%=rs.getString("Contact")%>">

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
