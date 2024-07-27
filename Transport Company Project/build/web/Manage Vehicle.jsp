<%-- 
    Document   : Manage Vehicle
    Created on : Feb 15, 2023, 9:30:51 PM
    Author     : teju
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
        <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Manage Vehicle </title>
                <link rel="stylesheet" href="bootstrap.css">
                <style type="text/css">
                      
        
         .container
         {
             box-shadow: 2px 10px 8px 10px white;
             opacity: 0.8;
             margin-top: px;
             border: 3px  solid black;
             background-color: white;
             height: 600px;
             width: 900px;
             padding-top: 40px;
             padding-left:40px;
             font-size: 14px;

         }
         input[type=submit]
               {
                   cursor: pointer;
                   width: 24%;
               }
                header
               {
                   font-size: 50px;
               }
               body
               {
                   background-size: cover;
                  background-image: url("Project Images/registration.jpg");
               }
               .btn-danger{
                   width: 24%;
               }
                </style>
    </head>
    <body>
        <%@include file="admin header.jsp" %>
        
        <%  Connection cn=null;
            Statement st=null;
            String id="1";
            try
        {
         Class.forName("com.mysql.jdbc.Driver");
         cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_transport_system","root","root");
         st=cn.createStatement();
         String sql="select Vehicle_No from manage_vehicle";
         ResultSet rs= st.executeQuery(sql);
         while(rs.next())
         { 
           id=String.valueOf(Integer.parseInt(rs.getString("Vehicle_No"))+1);
         }
        
        }catch(Exception ex)
        {
          out.println(ex);
        }%>
        <br>
        <form action="ManageVehicle" method="POST">
        <script src="validation.js"></script>
        <div class="container">
                <center> <header> Manage Vehicle</header></center><br>
            <div class="row">
                                <div class="col-sm-1"></div>

                <div class="col-sm-5">
                      
                    <div class="form-group">
                        <label>Vehicle No :</label>
                        <input type="text" placeholder="Enter Vehicle No"  class="form-control" value="<%=id%>" name="vno" onkeypress="javascript:return isAlphanumric(event)" required >
                    </div>
                    <div class="form-group">
                        <label>  Vehicle Year :</label>
                        <input name="year" class="form-control" placeholder="Enter Vehicle year" rows="3" cols="15" required></input>
                     </div>
                         <div class="form-group">
                        <label>Vehicle color :</label>
                        <input type="text" placeholder="Enter Vehicle colour" class="form-control" name="color" onkeypress="javascript:return isString(event)" required>
                    </div>  
                    <div class="form-group">
                        <label>Vehicle Image :</label>
                        <input type="file" placeholder="Upload Your Photo" class="form-control" name="photo" required>
                    </div>
                    
                    <div class="form-group">
                        <label>Booked Date :</label>
                        <input type="date" placeholder="Enter Date" class="form-control" name="date" required>
                        <script type="text/javascript">
     window.onload=function(){
     var today = new Date().toISOString().split('T')[0];
     
     document.getElementsByName("txt_contact")[0].setAttribute('max', today);
    }

      </script> 
                    </div>  
                </div>
                      
                      <div class="col-sm-5">
                          
                          <div class="form-group">
                        <label>Model :</label>
                        <input type="text" placeholder="Enter Model" class="form-control" name="mname" onkeypress="javascript:return isAlphanumric(event)" required>
                    </div> 
<div class="form-group">
                        <label>Rate :</label>
                        <input type="number" placeholder="enter rate per Km" class="form-control" name="rate" required>
                    </div>
                     
                
                     

                     <div class="form-group">
                        <label>Driver Name:</label>
                        
                        <select class="form-control" name="dname">
                            <%
                           
         
      try {
                        Class.forName("com.mysql.jdbc.Driver");
                        cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_transport_system", "root", "root");
                        st = cn.createStatement();
                        String sql = "select * from driver_registration";
                        ResultSet rs = st.executeQuery(sql);
                        while (rs.next()) 
            {
                           %>


                            <option><%=rs.getString("Driver_Name")%></option>
                          <%
        }
     }catch(Exception ex)
    {
    out.println(ex.toString());

     }
    %>
            
                        </select>
                     </div> 
                     <div class="form-group">
                        <label>Route :</label>
                        <input type="text" placeholder="Enter Route" class="form-control" name="route" onkeypress="javascript:return isString(event)" required>
                    </div> 
                     <div class="form-group">
                        <label>Driver contact no :</label>
                        <input type="text" placeholder="Enter Mobile Number" class="form-control" name="cno" onkeypress="javascript: return isContactno(event)" maxlength="10" required>
                    </div> 
                    </div> 
                </div>
                 <br><br>
            <div class="row">
                <div class="col-sm-4"></div>

                <div class="col-sm-8">
                    <input type="submit" class="btn btn-primary" name="btn" value="Insert">
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    
                    <a href="Driver Registration.jsp " class="btn btn-danger">Cancel</a>

                </div>
            </div>
        </div>
        </div>
        </form>
    </body>
    
</html>
