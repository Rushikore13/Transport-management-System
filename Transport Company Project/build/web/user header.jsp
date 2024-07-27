<%-- 
    Document   : user header
    Created on : 15 Apr, 2023, 4:22:36 PM
    Author     : jyoti
--%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="bootstrap.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

    <style type="text/css">
       
.top-bar .nav-item {
      display: inline-block;
    }
    
    nav {
      padding: 10px;
    }
    
    nav.top-bar-wrap {
      background: #ffb66c;
      font-size: 14px;
      font-family: Times New Roman,sans-serif;
    }
    
    .top-bar-wrap {
      height: 80px;
      padding-left: 13px;
      line-height: 80px;
    }
    
    .main-nav-wrap {
      height: 80px;
      line-height: 90px;
    }
    
    nav.main-nav-wrap {
      background: #7c2222;
      font-size: 1.25rem
    }
    
    nav.top-bar-wrap ul,
    nav.main-nav-wrap ul {
      margin-bottom: 0px;
      margin-top: 0px
    }
    
    a.nav-link:hover {
        background: skyblue;
      color:black;
      border-left: 12px solid rgba(0, 0, 0, 0.3);
    }
    
    a.nav-link {
      border-left: 12px solid transparent;
      border-right: 12px solid transparent;
      color: #f9f9f9;
      text-transform: uppercase;
      font-family: 
      sans-serif;
      transform: skew(-25deg);
      transition: all 400ms ease-out
    }
    
    a .inner-link {
      display: inline-block;
      transform: skew(25deg)
    }
    
    .nav-link {
      padding: 0px;
    }
    
    .top-bar-wrap a {
      padding-left: 12px;
    }
    
    .main-nav-wrap a {
      padding-left: 18px;
    }
    
    .brand-logo img {
      height: 40px;
      transform: skew(25deg)
    }
    
    .brand-phone a {
      display: block;
      font-size: 1.25em;
      text-decoration: none;
      color: #000000;
      letter-spacing: 2px;
      height: 40px;
      line-height: 1.5em;
      transform: skew(25deg)
    }
    
    .brand-phone,
    .brand-logo {
      padding: 40px;
      position: absolute;
      top: 0;
      height: 120px;
    
      transform: skewX(-25deg);
    }
    
    .brand-logo {
      left: -30px;
      padding-left: 70px;
      background: #621616;
      border-right: 2px solid #ffb66c;
    
    }
    
    .brand-phone {
      right: 0;
      right: -30px;
      padding-right: 70px;
      background: #ffb66c;
      border-left: 3px solid #6c4013;
    }
     
    </style>
    </head>


<body>
    <div role="navigation">
      <div class="">
        <div class="brand-logo">
          <a href=""><img src="Project Images/booking.png" /></a>
        </div>
        <div class="brand-phone">
          <a href="#"><i class="fa fa-phone me-3"></i>8483827650</a>
        </div>
        <div class="text-center">
          <nav class="top-bar-wrap">
            <ul class="top-bar">
              <li class="nav-item">
                <a href="index.html" class="nav-link"><span class="inner-link">Home</span></a>
              </li>
              
             
               <li class="nav-item">
                <a href="Feedback.jsp" class="nav-link"><span class="inner-link"> Feedback</span></a>
              </li>
               <li class="nav-item">
                <a href="Query.jsp" class="nav-link"><span class="inner-link">Quries</span></a>
              </li>
              <li class="nav-item">
                <a href="list_booking user.jsp" class="nav-link"><span class="inner-link">My Bookings</span></a>
              </li>
              <li class="nav-item">
                <a href="index.html" class="nav-link"><span class="inner-link">LogOut</span></a>
              </li>
              
            </ul>
          </nav>
          <nav class="main-nav-wrap">
            <ul class="main-nav">
              <li class="nav-item">
                <a href="#" class="nav-link"><span class="inner-link"></span></a>
              </li>
              
            </ul>
          </nav>
        </div>
      </div>
    </div>
    
   </body>
</html>

