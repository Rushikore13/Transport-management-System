<%-- 
    Document   : user signup
    Created on : 8 Apr, 2023, 3:10:41 PM
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
        <title> UserSign Up </title>
            <link rel="stylesheet" href="bootstrap.css">
            <style type="text/css">
                .container
                {
                     box-shadow: 2px 10px 8px 10px #6D7B8D;
                    opacity: 0.8;
                    background-color:white;
                   width: 50%;
                   height: 700px;
                }
            h1
            {
                margin-top: 20px;
                padding-bottom: 50px;
            }
            body
            {
                padding-top:  10px;
                color: black;
                background-size:100% 900px;
                background-image: url("Project Images/New folder (2)/img1.jpeg");

               
            }
             
               input[type=submit]
               {
                   cursor: pointer;
                   
               }
            </style>
    </head>
    
    <body>
         <%
        Connection cn=null;
            Statement st=null;
            String id="1";
            try
        {
         Class.forName("com.mysql.jdbc.Driver");
         cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_transport_system","root","root");
         st=cn.createStatement();
         String sql="select User_Id from user_signup_tbl";
         ResultSet rs= st.executeQuery(sql);
         while(rs.next())
         { 
           id=String.valueOf(Integer.parseInt(rs.getString("User_Id"))+1);
         }
        
        }catch(Exception ex)
        {
          out.println(ex);
        } 
    %>
       
    <form action="UserSignup" method="POST">
            <script src="validation.js"></script>

            <div class="container">
                <center> <h1>Sign Up</h1></center>
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8">
                        <div class="form-group">
                            <label>User
                                Id :</label>
`                               <input type="number" required class="form-control" name="txt.id" placeholder="Enter user Id" value="<%=id%>" onkeypress="javascript:return isNumber(event)">

                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8">
                        <div class="form-group">
                            <label>First Name :</label>
                            <input type="text" required class="form-control" name="txt.Fname" placeholder="Enter First Name" onkeypress="javascript:return isString(event)">
                        </div>
                    </div>
                    
                </div>
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8">
                        <div class="form-group">
                            <label>Last Name :</label>
                            <input type="text"  required class="form-control" name="txt.Lname" placeholder="Enter Last Name"onkeypress="javascript:return isString(event)">
                        </div>
                    </div>
                    
                </div>
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8">
                        <div class="form-group">
                            <label>Email :</label>
                            <input type="email" id="email" required class="form-control" name="txt.email"  placeholder="Enter Email ">
                        </div>
                    </div>
                    
                </div>
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8">
                        <div class="form-group">
                            <label>Password :</label>
                            <input type="Password" required id="pass" class="form-control" name="txt.pass" placeholder="Enter Password" title="Plz enter valid password like Capital letter,Symbol and 8 charectors and one number" pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,12}$">
                        </div>
                    </div>
                    
                </div>
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8">
                        <div class="form-group">
                            <label>Contact :</label>
                            <input type="text" required class="form-control" name="txt.contact" placeholder="Enter Mobile Number" onkeypress="javascript:return isContactno(event)" maxlength="10">
                        </div>
                    </div>
                </div>
                <br> 
                <div class="row">
                    <div class="col-sm-3"></div>
                    
                    <div class="col-sm-9">
                       
                            <input type="submit" name="btn_save" onclick="send()" class="btn btn-info" value="Sign Up">
<!--                            <button type="submit" onclick="send()" class="btn btn-info" value="Send Mail">Send Mail</button>-->
             <input type="submit"  name="btn_save" class="btn btn-info" value=" Cancel">
                       
                    </div>
                </div>
                   
            </div>
           
        </form>   


    </body>
    <script src="https://smtpjs.com/v3/smtp.js">
</script>
<script type="text/javascript">
  function send()
  {
    var email=document.getElementById("email").value;
    
     var password=document.getElementById("pass").value;
     
           Email.send({
    Host : "smtp.elasticemail.com",
    Username : "ketangorule29@gmail.com",
    Password : "0AF563A2DC2D559D914C2FFF8ECFDA31115A",
    To : email,
    From : "codeexperttech@gmail.com",
    Subject : "Account Creation",
    Body : 
    "Username: "+ email  +"<br>"+
    "Password: "+password

    
}).then(
  message => alert(message)
);
}
</script>
</html>
