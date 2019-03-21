<%-- 
    Document   : showReservationInfo
    Created on : 18-mar-2019, 18:19:33
    Author     : Apergot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Your reservation has been completed with the following info</h1>
        <%
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String date = request.getParameter("date");
        String time = request.getParameter("time");
        %>
        <p>Name: <%= name%></p>
        <p>E-mail: <%= email%></p>
        <p>Phone: <%= phone%></p>
        <p>Pick up date: <%= date%></p>
        <p>Pick up hour: <%= time%></p>
        <br></br>
        <a href="toprated.jsp"><button onclick>Go to the main page</button></a>
    </body>
</html>
