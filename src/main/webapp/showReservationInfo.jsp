<%-- 
    Document   : showReservationInfo
    Created on : 18-mar-2019, 18:19:33
    Author     : Apergot
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="PerdoUtils.Reservation"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="mail.NewJerseyClient"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <h2 style="text-align: center">Your reservation has been completed with the following info</h2>
        <%
            String id = request.getParameter("id");
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String date = request.getParameter("date");
            String time = request.getParameter("time");
            int idbd = 0;
        %>
        
        <div style="text-align: center">
            <p>Name: <%= name%></p>
            <p>E-mail: <%= email%></p>
            <p>Phone: <%= phone%></p>
            <p>Pick up date: <%= date%></p>
            <p>Pick up hour: <%= time%></p>
            <p>ID: <%= id%></p>
            <br></br>
            <button onclick><a href="toprated.jsp">Go to the main page</a></button>
        </div>
        <%
            try {
                insert.AddDB_Service service = new insert.AddDB_Service();
                insert.AddDB port = service.getAddDBPort();
                // TODO initialize WS operation arguments here
                // TODO process result here
                java.lang.String result = port.insertDB(name,email, phone, date, time, id);
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
