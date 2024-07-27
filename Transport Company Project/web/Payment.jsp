<%-- 
    Document   : Payment
    Created on : Feb 15, 2023, 10:07:43 PM
    Author     : teju
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <title>Payment Form</title>
        <link rel="stylesheet" href="style.css" />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap"
            rel="stylesheet"
            />
        <style>
            body
            {
                margin-bottom: 30px;
                padding: 0;
                background-color: #22283e;
                font-family: 'Roboto', sans-serif;
                background-image: url("Project Images/payment.jpg");
                background-size: cover;


            }
            form{
                margin-top: 10px;
                margin-left: 420px;
                width: 600px;
                padding:  20px;
                background-color: #30475e;
                opacity: 0.8;
                box-shadow: 2px 10px 8px 10px #6D7B8D;
                color: #fff;

            }
            h1{
                text-align: center;
            }
            .box1{
                width: 100%;
                padding: 10px;
                border: none;
                border-radius: 15px;
                box-sizing: border-box;
                margin: 10px 0 15px 0;
                background-color: white;
                color: black;

            }
            .box2{
                padding: 10px;
                border: none;
                border-radius: 15px;
                margin: 10px 0 15px 0;
                background-color: white;
                color: black;
            }
            .box3{

                cursor: pointer;
                margin-left: 120px;
                width: 90px;
                padding: 10px;
                border: none;
                border-radius: 15px;
                background-color: white;
                font-size: 13px;
                color: black;
            }
            .box4
            {
              cursor: pointer;
                margin-left: 120px;
                width: 10px;
                padding: 10px;
                border: none;
                border-radius: 15px;
                background-color: white;
                font-size: 13px;
                color: black;  
                
            }
            .div1{
                display:inline-block ;
            }
           

        </style>
    </head>
    <body>

        <%@include file="user header.jsp" %>
        <%
            Connection cn = null;
            Statement st = null;
            String id = "1";
            try {
                Class.forName("com.mysql.jdbc.Driver");
                cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_transport_system", "root", "root");
                st = cn.createStatement();
                String sql = "select payer_id from payment";
                ResultSet rs = st.executeQuery(sql);
                while (rs.next()) {
                    id = String.valueOf(Integer.parseInt(rs.getString("payer_id")) + 1);
                }

            } catch (Exception ex) {
                out.println(ex);
            }
        %>
        <script src="validation.js"></script>
        <form action="Payment" method="POST">
            <h1>Payment Form</h1>
            <label for="Form">Payer Id :</label><br />
            <input
                class="box1"
                type="number"
                name="id"
                id="id"
                required
                placeholder="Enter Your Id"
                value="<%=session.getAttribute("User_Id")%>" 
                onkeypress="javascript:return isNumber(event)"
                /><br />
            <label for="Form">Payer Name :</label><br />
            <input
                class="box1"
                type="text"
                required
                name="name"
                id="id"
                placeholder="Enter Your Name"
               value="<%=session.getAttribute("Cname")%>"               
              onkeypress="javascript:return isString(event)"
                /><br />
            <label for="email">Email :</label> <br />
            <input
                class="box1"
                type="email"
                name="email"
                required
                id="email"
                
                placeholder="Enter Email"
                /><br />


            <label for="card number"> Card Number :</label><br />
            <input
                class="box1"
                required
                type="number"
                name="cardno"
                id="cardno"
                placeholder="1234 1234 1234"
                onkeypress="javascript:return isNumber(event)"
                maxlength="12"
                /><br />
            &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
            <div class="div1">
                <label for="cvv"> Enter Amount :</label><br />
                <input
                    class="box2"
                    required
                    type="number"
                    name="amount"
                    id="amount"
                    placeholder="amount"
                 value="<%=session.getAttribute("Tbill")%>"
                    onkeypress="javascript:return isNumber(event)"
                    /><br /> 
            </div>
            &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp
            &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
            <div class="div1">
                <label for="cvv"> Enter CVV :</label><br />
                <input
                    class="box2"
                    required
                    type="number"
                    name="cvv"
                    id="cvv"
                    placeholder="cvv"
                    onkeypress="javascript:return isNumber(event)"
                    /><br />
            </div>
            <br><br>
            <input class="box3" type="submit" name="btn" value="Pay Now">
            <a href="newpayment.jsp" class="box4">Close</a>

        </form>
    </body>
</html>