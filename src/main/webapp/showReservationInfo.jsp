<%-- 
    Document   : showReservationInfo
    Created on : 18-mar-2019, 18:19:33
    Author     : Apergot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="PerdoUtils.Reservation"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      
        <h1>Your reservation has been completed with the following info</h1>
        <%
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String date = request.getParameter("date");
        String time = request.getParameter("time");
        %>
        <%-- start web service invocation --%><hr/>
            <%
                    try {
                        insert.AddDB_Service service = new insert.AddDB_Service();
                        insert.AddDB port = service.getAddDBPort();
                        // TODO initialize WS operation arguments here
                        // TODO process result here
                        java.lang.String result = port.insertDB(name, phone, email, date, time, id);
                        out.println("Result = "+result);
                    } catch (Exception ex) {
                        // TODO handle custom exceptions here
            }
            %>
            <%-- end web service invocation --%><hr/>
        <p>Name: <%= name%></p>
        <p>E-mail: <%= email %></p>
        <p>Phone: <%= phone %></p>
        <p>Pick up date: <%= date %></p>
        <p>Pick up hour: <%= time %></p>
        <p>ID: <%= id%></p>
        <br></br>
        <a href="toprated.jsp"><button onclick>Go to the main page</button></a>
    </body>
</html>
