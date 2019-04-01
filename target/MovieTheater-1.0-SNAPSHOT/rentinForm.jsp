<%-- 
    Document   : rentinForm
    Created on : 19-mar-2019, 12:48:49
    Author     : Apergot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <title>Reservation</title>

    </head>
    <body>
        <%
        int id = Integer.parseInt(request.getParameter("id"));
        %>
        <div style="alignment-adjust: central">
            <div>
                <div>
                    <div>
                        <div>
                            <div>
                                <h1>Make a reservation</h1>
                            </div>
                            <form action="<%=request.getContextPath() %>/showReservationInfo.jsp?id=<%=id%>" method="POST">
                                <div>
                                    <div>
                                        <div>
                                            <span>Name</span>
                                            <input type="text" name="name" placeholder="Enter your name">
                                        </div>
                                    </div>
                                    <div>
                                        <div>
                                            <span>Email</span>
                                            <input type="email" name="email" placeholder="Enter your email">
                                        </div>
                                    </div>
                                </div>
                                <div>
                                    <span>Phone</span>
                                    <input type="tel" name="phone" placeholder="Enter your phone number">
                                </div>
                                <div>
                                    <span>Pickup Location</span>
                                    <select>
                                        <otion>La Aldea</option>
                                        <option>Telde</option>
                                        <option>Vecindario</option>
                                        <option>Valsequillo</option>
                                        <option>Arucas</option>
                                    </select>
                                </div>

                                <div>
                                    <div>
                                        <div>
                                            <span>Pickup Date</span>
                                            <input type="date" name="date" required>
                                        </div>
                                    </div>
                                    <div>
                                        <div>
                                            <span>Time</span>
                                            <input type="time" name="time" required>
                                        </div>
                                    </div>
                                    <div>
                                        <input type="submit" value="Submit">
                                    </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
