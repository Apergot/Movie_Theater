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
        <link rel="stylesheet" type="text/css" href="style2.css">
        <title>Form</title>

    </head>
    <body>
        <ul>
            <li><a class="logo" href="toprated.jsp"><img src="https://fontmeme.com/permalink/190401/2daf2665b57c13133b7bb8ff49064292.png" alt="netflix-font" border="0" width="150" height="50"></a>
            <li><a href="#news">News</a></li>
            <li><a href="#contact">Contact</a></li>
            <li><a href="#about">About</a></li>
        </ul>
        <%
            int id = Integer.parseInt(request.getParameter("id"));
        %>
        <div class="mainDiv">
            <div style="text-align: center">
                <h1>Make a reservation</h1>
            </div>
            <form action="showReservationInfo.jsp?id=<%=id%>" method="POST">
                <%/* <%=request.getContextPath()*/%>

                <div class="norm">

                    <div>
                        <label for="name">Name</label>
                    </div>
                    <div>
                        <input type="text" name="name" placeholder="Enter your name">
                    </div>

                </div>
                <div class="norm">

                    <div>
                        <label for="email">E-mail</label>
                    </div>
                    <div>
                        <input type="email" name="email" placeholder="Enter your email">
                    </div>

                </div>

                <div class="norm">
                    <div>
                        <label for="phone">Phone number</label>
                    </div>
                    <div>
                        <input type="tel" name="phone" placeholder="Enter your phone number">
                    </div>
                </div>
                <div class="norm">
                    <div>
                        <label for="location">Which one of our videoclubs?</label>
                    </div>
                    <div>
                        <select class="location">
                            <otion>La Aldea</option>
                                <option>Telde</option>
                                <option>Vecindario</option>
                                <option>Valsequillo</option>
                                <option>Arucas</option>
                        </select>
                    </div>
                </div>


                <div class="norm">

                    <div>
                        <label for="date" >When would you like to come?</label>
                    </div>
                    <div>
                        <input type="date" name="date" required>
                    </div>

                </div>
               
                <div>
                    
                    <div>
                        <label for="time">At which time?</label>
                    </div>
                    <div>
                        <input type="time" name="time" required>
                    </div>

                </div>
               
              
                <div class="submitB">
                    <div>
                        <input type="submit" value="Submit">
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
