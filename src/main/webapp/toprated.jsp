<%-- 
    Document   : toprated
    Created on : 13-mar-2019, 16:45:23
    Author     : Apergot
--%>

<%@page import="JsonBoss.TopRatedMovie"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="JsonBoss.UseTopRated"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Perdoflix</title>
        <link rel="stylesheet" type="text/css" href="style.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
    </head>
    <body>


        <ul>
            <li><a class="logo" href="toprated.jsp"><img src="https://fontmeme.com/permalink/190401/2daf2665b57c13133b7bb8ff49064292.png" alt="netflix-font" border="0" width="150" height="50"></a>
            <li><a href="#news">News</a></li>
            <li><a href="#contact">Contact</a></li>
            <li><a href="#about">About</a></li>
        </ul>
        <div class="container">     
            <%
                int numPag;
                if (request.getParameter("numPag") == null || Integer.parseInt(request.getParameter("numPag")) < 1) {
                    numPag = 1;
                } else {
                    numPag = Integer.parseInt(request.getParameter("numPag"));
                }

                UseTopRated prueba = new UseTopRated();
                List pelis = prueba.getTopRatedMovies(numPag);
                session.setAttribute("UseTopRatedClass", prueba);
                for (int i = 0; i < pelis.size(); i++) {
                    TopRatedMovie trm = (TopRatedMovie) pelis.get(i);
                    String ImagenPrueba = prueba.getPosterFromTRM(trm);

            %>
            <div class="card">
                <%                    String title = trm.getTitle();
                    if (title.length() > 25) {
                        title = title.trim().substring(0, 25) + "...";
                    }
                %>
                <div class="img-box">
                    <a href="rentinForm.jsp?id=<%= trm.getId()%>"><img src = "<%=ImagenPrueba%>"></a>
                </div>
                <div class="content">
                    <h2><%= title%><br>
                        <span> 
                            <%
                                stars.Stars_Service service = new stars.Stars_Service();
                                stars.Stars port = service.getStarsPort();
                                // TODO initialize WS operation arguments here
                                float average = trm.getVote_average();
                                // TODO process result here
                                java.lang.String result = port.giveStars(average);
                                int stars = Integer.parseInt(result);
                                for (int j = 0; j < stars; j++) {
                            %>
                            <i class="fas fa-star"></i>
                            <%
                                }

                            %>
                        </span>
                    </h2>
                    <!--<p>Aquí hay que poner la descripción, vamos a ver si funciona primero</p>-->
                </div>
            </div>

            <%                }
            %>

        </div>
        <div class="footbuttons">
            <a href="toprated.jsp?numPag=<%=numPag - 1%>"><button class="Button">Last Page</button></a>
            <a href="toprated.jsp?numPag=<%=numPag + 1%>"><button class="Button">Next Page</button></a>
        </div>
    </body>
</html>