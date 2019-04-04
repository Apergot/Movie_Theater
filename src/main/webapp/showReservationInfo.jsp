<%-- 
    Document   : showReservationInfo
    Created on : 18-mar-2019, 18:19:33
    Author     : Apergot
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="PerdoUtils.Reservation"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="rest.NewJerseyClient"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style3.css">
        <title>JSP Page</title>
    </head>
    <body>
        <ul>
            <li><a class="logo" href="toprated.jsp"><img src="https://fontmeme.com/permalink/190401/2daf2665b57c13133b7bb8ff49064292.png" alt="netflix-font" border="0" width="150" height="50"></a>
            <li><a href="#news">News</a></li>
            <li><a href="#contact">Contact</a></li>
            <li><a href="#about">About</a></li>
        </ul>

        <h2 style="text-align: center">Your reservation has been confirmed, check out your email!</h2>
        <%
            String id = request.getParameter("id");
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String date = request.getParameter("date");
            String time = request.getParameter("time");
            int idbd = 0;
        %>
        <div class="container">
            <div class="container2">
                <div>
                <p>Client name: <%= name%></p>
                <p>E-mail: <%= email%></p>
                <p>Phone number: <%= phone%></p>
                <p>Pick up date: <%= date%></p>
                <p>Pick up hour: <%= time%></p>
                <p>Movie id: <%= id%></p>
                <br></br>
                <a href="toprated.jsp"><button class="button">Go to the main page</button></a>
                </div>
            </div>
        </div>
        <%
            try {
                insert.AddDB_Service service = new insert.AddDB_Service();
                insert.AddDB port = service.getAddDBPort();
                // TODO initialize WS operation arguments here
                // TODO process result here
                java.lang.String result = port.insertDB(name, phone, email, date, time, id);
            } catch (Exception ex) {
                // TODO handle custom exceptions here
            }
        %>

        <%
            //here we take the reservation id from the email, which is unique
            try {
                insert.AddDB_Service service = new insert.AddDB_Service();
                insert.AddDB port = service.getAddDBPort();
                // TODO initialize WS operation arguments here
                // TODO process result here
                idbd = port.getReservationId(email);

            } catch (Exception ex) {
                // TODO handle custom exceptions her
            }
        %>
        <%
            NewJerseyClient cliente = new NewJerseyClient();
            cliente.putMail(email);
        %>

    </body>
</html>
