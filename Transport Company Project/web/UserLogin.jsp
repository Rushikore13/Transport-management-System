<%-- 
    Document   : User Login
    Created on : Feb 25, 2023, 7:23:16 PM
    Author     : teju
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Login Page</title>
        <link rel="stylesheet" href="bootstrap.css">
        <style type="text/css">
            .container
            {
                opacity: 0.8;
                margin-top: 60px;
                background-color: white;  /* fallback for old browsers */
                height: 630px;
                width: 1300px;
                box-shadow: 2px 10px 8px 10px black;


            }
            span
            {
                color: black;
                font-size: medium;
                display: flex;
                justify-content :center;
                padding-top: 40px;
            }
            header
            {
                color: black;
                font-size: 30px;
                display: flex;
                justify-content :center;
                padding-top: 50px;
                font-family: Cooper Black;
            }
            .button
            {
                display: flex;
                flex-direction :row;
                justify-content :space-between;
                font-size: small;
                color: black;
                margin-top: 10px;
            }
            input[type=submit]
            {
                cursor: pointer;
                width: 45%;
            }
            img
            {
                margin-right: 100px;
                box-shadow: 2px 10px 8px 20px white;

            }

            body
            {
                color: black;
            }
        </style>
    </head>
    <body>

        <form action="User_Login" method="POST">
            <script src="validation.js"></script>

            <div class="container">
                <div class="box">

                    <div class="row">
                        <div class="col-sm-7">
                            <img src="Project Images/user_login.jpg" height="630px;" width="630px">
                        </div>
                        <div class="col-sm-4">
                            <span>Have An Account..? <label>  <a href="user signup.jsp">  Sign Up</a></label></span>
                            <header>Log In</header><br>
                            <div class="form-group">
                                <label>Email :</label><br>
                                <input type="email" required class="form-control" name="email" placeholder="Enter Your Email">
                            </div>
                            <br>
                            <div class="form-group">
                                <label>Password :</label>
                                <input type="Password" required name="pass" class="form-control" placeholder="**********">
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-sm-2"></div>
                                <div class="col-sm-8">
                                    <div class="form-group">
                                        <input type="submit" name="btn" class="btn btn-info" value="Login">
                                        <input type="submit" name="btn" class="btn btn-info" value=" Cancel">
                                    </div>
                                </div>
                            </div>
                            <div class="button" >
                                <div class="left">
                                    <input type="checkbox" id="check">
                                    <label for="check">Remember Me</label>
                                </div>
                                <div class="right">
                                    <label><a href="Forgot Password.jsp">Forgot Password</a></label>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </form>
    </body>
</html>
