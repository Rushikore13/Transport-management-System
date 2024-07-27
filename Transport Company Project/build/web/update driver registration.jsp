<%-- 
    Document   : Driver Registration
    Created on : Feb 10, 2023, 8:40:00 PM
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
        <title>Driver Registration</title>
        <link rel="stylesheet" href="bootstrap.css">
        <style type="text/css">

            body
            {
                margin-top: 50px;
                background-size: cover;
                background-image:url("Project Images/New folder (2)/img3.jpg"); 
                height: 50%;

            }
            .container
            {
                box-shadow: 2px 10px 8px 10px #6D7B8D;
                padding-top: 30px;
                opacity: 0.8;
                background-color: white;
                height: 500px;
                width: 1000px;
                margin-top: 40px;
                font-size: 14px;

            }


            .btn-success
            {
                color: darkgreen;
                text-align: center;
                display: inline;
                font-size: 14px;
                border-radius:1px; 


            }
            h1
            {
                font-size: 50px;
            }
            input[type=submit]
            {
                color: black;
                cursor: pointer;
                width: 20%;
            }

        </style>
    </head>
    <body>
         <%@include file="admin header.jsp" %>

        <form action="DriverRegistration" method="POST">
            <script src="validation.js"></script>
            <div class="container">
                <center><h1> Driver Registration</h1> </center>

                <br><br>

                <div class="row">
                    <div  class="col-sm-2"></div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label>Driver Id :</label>
                            <input type="Number" placeholder="Enter Your Id" value="<%=request.getParameter("driver_id")%>" class="form-control" name="no"  onkeypress="javascript:return isNumber(event)" required>
                        </div>  
                        <div class="form-group">
                            <label>Driver  Name :</label>
                            <input type="text" placeholder="Enter Your Name" value="<%=request.getParameter("driver_name")%>" class="form-control" name="name" onkeypress="javascript:return isString(event)" required>
                        </div> 
                        <div class="form-group">
                            <label>Contact :</label>
                            <input type="text" placeholder="Enter Mobile Number" value="<%=request.getParameter("contact")%>" class="form-control" name="cno" onkeypress="javascript:return isContactno(event)" maxlength="10" required>
                        </div> 
                    </div>

                    <div class="col-sm-4">

                        <div class="form-group">
                            <label>Experience :</label>
                            <input type="text" placeholder="Enter Your Experience " value="<%=request.getParameter("experience")%>" class="form-control" name="experience" required>
                        </div>  
                        <div class="form-group">
                            <label> Licence No :</label>
                            <input type="text" placeholder="Enter License No" value="<%=request.getParameter("licence_no")%>" class="form-control" name="lno" required>
                        </div>  
                        <div class="form-group">
                            <label>Photo :</label>
                            <input type="file" placeholder="Upload Your Photo" value="<%=request.getParameter("photo")%>" class="form-control" name="photo" required>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8">
                        <div class="form-group">
                            <label>Address :</label>
                            <textarea name="address" class="form-control" placeholder="Enter  Your Address" rows="4" cols="40" required> <%=request.getParameter("address")%> </textarea>
                        </div>
                    </div>
                </div>
                <br><br>



                <div class="row">
                    <div class="col-sm-4"></div>

                    <div class="col-sm-8">


                        <input type="submit" class="btn btn-success" name="btn" value="Update">  
                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        <input type="submit" class="btn btn-danger" name="btn" value="Delete">


                    </div>
                </div>

            </div>

        </form>
    </body>
</html>