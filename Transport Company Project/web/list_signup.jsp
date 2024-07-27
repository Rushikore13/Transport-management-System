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
        <title>Sign Up List Page</title>
        <link rel="stylesheet" href="bootstrap.css">

    </head>
    <body>
        <div class="container">
                <center> <h1>Sign Up List </h1></center>

            <br>
            
            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th scope="col">Admin Id</th>
                        <th scope="col">First Name</th>
                        <th scope="col">Last Name</th>
                        <th scope="col">Email</th>
                        <th scope="col">Password</th>
                        <th scope="col">Contact</th>
                    </tr>
                </thead>
<tbody>
                <%
                    Connection cn = null;
                    Statement st = null;
                    int counter = 1;
                     String sql="";
           String name=request.getParameter("txt.Fname");
           String event=request.getParameter("btn");
           
           
                   
                                                          

                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_transport_system", "root", "root");
                        st = cn.createStatement();

                        ResultSet rs = st.executeQuery(sql);
                        while (rs.next()) {
                %>
                
                    <tr>


                        <th scope="row"><%=counter++%></th>
                        
                        <td><%=rs.getString("First Name")%></td>
                        <td><%=rs.getString("Last Name")%></td>
                        <td><%=rs.getString("Email")%></td> 
                        <td><%=rs.getString("Password")%></td> 
                        <td><%=rs.getString("Contact")%></td>

                        <td><input type="submit" name="btn" value="Delete" class="btn btn-danger"></td>
                        
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

