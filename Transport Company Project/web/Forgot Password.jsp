<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Sign Up/In to SITENAME</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="bootstrap.css">
</head>
  <style>
    body, html {
      height: 100%;
      background-color: #f9f9f9;
      background-size:cover;
      background-image: url('LINK TO MY BACKGROUND IMAGE');
    }

    .login-container {
      position: relative;
      height: 100%;

    }

    .login-box {
      position: absolute;
      top: 50%;
      transform: translateY(-50%);
      padding: 15px;
      background-color: #fff;
      box-shadow: 0px 5px 5px #ccc;
      border-radius: 5px;
      border-top: 1px solid #e9e9e9;
      border: 1px solid grey;
    }

    .login-header {
      text-align: center;
      text-size:40px;
    }

    .login-header img {
      width: 200px;
    }
    
    .forgot-password {
      text-align: right;
      float: right;
      font-size: 10px
    }

    #error-message {
      display: none;
    }
  </style>
<body>
  <div class="login-container">
    <div class="col-xs-12 col-sm-4 col-sm-offset-4 login-box">
      <div class="login-header">
      	<label for="name"> Forget Password</label>
      </div>
      <div id="error-message" class="alert alert-danger"></div>
      <form action="Forgotpassword" method="post">
        <div class="form-group">
         <label for="name">Email</label>
          <input
            type="email"
            class="form-control"
            id="email"
            placeholder="Enter your email" name="email">
        </div>
        <div class="form-group">
          <label for="name">Password</label>
          <input
            type="password"
            class="form-control"
            id="password"
            placeholder="Enter your password" name="password" title="Plz enter valid password like Capital letter,Symbol and 8 charectors and one number" pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,12}$">
        </div>
        <div class="form-group">
          <label for="name">RE-Enter Password</label>
          <input
            type="npassword"
            class="form-control"
            id="npassword"
            placeholder=" RE-Enter password" name="npassword" title="Plz enter valid password like Capital letter,Symbol and 8 charectors and one number" pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,12}$">
        </div>
         <br>
         <button type="submit" id="btn-login" class="btn btn-primary btn-block" name="btn" value="Set New Password">Set New Password</button>
        <br>
       
        <button
          type="button"
          id="btn-signup"
          class="btn btn-default btn-block">
            No account yet? <a href="user signup.jsp " >Sign Up</a>
 
        </button>
        <hr>
        
      </form>
    </div>
  </div>

  <!--[if IE 8]>
  <script src="//cdnjs.cloudflare.com/ajax/libs/ie8/0.2.5/ie8.js"></script>
  <![endif]-->

  <!--[if lte IE 9]>
  <script src="https://cdn.auth0.com/js/polyfills/1.0/base64.min.js"></script>
  <script src="https://cdn.auth0.com/js/polyfills/1.0/es5-shim.min.js"></script>
  <![endif]-->

  <script src="https://cdn.auth0.com/js/auth0/9.11.2/auth0.min.js"></script>
  <script src="https://cdn.auth0.com/js/polyfills/1.0/object-assign.min.js"></script>
  
</body>
</html>