<%-- 
    Document   : Manage Vehicle
    Created on : Feb 15, 2023, 9:30:51 PM
    Author     : teju
--%>

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
             margin-top: 40px;
             border: 3px  solid black;
             background-color: white;
             height: 400px;
             width: 700px;
             padding-top: 40px;

         }
         input[type=submit]
               {
                   cursor: pointer;
                   width: 22%;
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
                </style>
    </head>
    <body>
         <%@include file="admin header.jsp" %>
        <form action="ManageVehicle" method="POST">
        <script src="validation.js"></script>
        <div class="container">
                <center> <header> Manage Vehicle</header></center><br>
            <div class="row">
                <div class="col-sm-4">
                      
                    <div class="form-group">
                        <label>Vehicle No :</label>
                        <input type="Number" placeholder="Enter Vehicle No" class="form-control" name="vno" value="<%=request.getParameter("vehicle_no")%>" onkeypress="javascript:return isAlphanumric(event)" required >
                    </div>
                    <div class="form-group">
                        <label>Rate :</label>
                        <input type="number" placeholder="Enter pate per Km" class="form-control" name="Rate" value="<%=request.getParameter("rate")%>" onkeypress="javascript:return isNumber(evt)" required >
                    </div> 
                    <div class="form-group">
                        <label>Model</label>
                        <input type="text" placeholder="Enter Model" class="form-control" name="mname" value="<%=request.getParameter("model")%>" onkeypress="javascript:return isAlphanumric(event)" required>
                    </div> 
                </div>
                       <div class="col-sm-4">
                    <div class="form-group">
                        <label>  Vehicle year</label>
                        <input name="year" class="form-control" placeholder="Enter Vehicle year" value="<%=request.getParameter("vehicle_year")%>" rows="3" cols="15" required></input>
                     </div>

                     <div class="form-group">
                        <label>Vehicle color :</label>
                        <input type="text" placeholder="Enter Vehicle colour" class="form-control" name="color" value="<%=request.getParameter("vehicle_color")%>" onkeypress="javascript:return isString(event)" required>
                    </div>  
                
                     <div class="form-group">
                        <label>Booked Date:</label>
                        <input type="date" placeholder="Enter Date" class="form-control" value="<%=request.getParameter("booked_date")%>" name="date" required>
                        <script type="text/javascript">
     window.onload=function(){
     var today = new Date().toISOString().split('T')[0];
     
     document.getElementsByName("txt_contact")[0].setAttribute('max', today);
    }

      </script> 
                    </div>  
            </div>
                      <div class="col-sm-4">

                     <div class="form-group">
                        <label>Driver Name:</label>
                        <input type="text" placeholder="Enter Driver Name" class="form-control" name="dname" value="<%=request.getParameter("driver_name")%>" onkeypress="javascript:return isString(event)" required>
                    </div> 
                     <div class="form-group">
                        <label>Route</label>
                        <input type="text" placeholder="Enter Route" class="form-control" name="route" value="<%=request.getParameter("route")%>" onkeypress="javascript:return isString(event)" required>
                    </div> 
                     <div class="form-group">
                        <label>Driver contact no.</label>
                        <input type="text" placeholder="Enter Mobile Number" class="form-control" name="cno" value="<%=request.getParameter("contact")%>" onkeypress="javascript: return isContactno(event)" maxlength="10" required>
                    </div> 
                    </div> 
                </div>
                 <br><br>
            <div class="row">
                <div class="col-sm-4"></div>

                <div class="col-sm-8">
                    <input type="submit" class="btn btn-success" name="btn" value="Update">
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    <input type="submit" class="btn btn-warning" name="btn" value="Delete">
                      
                    

                </div>
            </div>
        </div>
        </form>
    </body>
    
</html>
