<%-- 
    Document   : infotrm
    Created on : 14-mar-2019, 12:33:34
    Author     : Apergot
--%>

<%@page import="java.util.List"%>
<%@page import="JsonBoss.UseTopRated"%>
<%@page import="JsonBoss.TopRatedMovie"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Info</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
    </head>
    <body>
        <%
            int id = Integer.parseInt(request.getParameter("id"));
            UseTopRated prueba = (UseTopRated)session.getAttribute("UseTopRatedClass");
            TopRatedMovie trm = prueba.searchMovie(id);
            String ImagenPrueba = prueba.getPosterFromTRM(trm);
        %>
        <h2 style="text-align: center"><%= trm.getTitle() %></h2>
        <table style="width:100%">
            <tr>
                <th></th>
                <th colspan="2"></th>
            </tr>
            <tr>
                <td><img src = "<%=ImagenPrueba%>" alt = "poster" width = "202" height = "302"></td>
                <td>
                    <div>
                            <div>
                                <p>Average Score: <%= trm.getVote_average()%></p>
                        <p>Overview: <%= trm.getOverview() %></p>
                        <div>
                            <p>Release Date: <%= trm.getRelease_date()%></p>
                                <div>
                                    <p>Original Title: <%= trm.getOriginal_title()%></p>
                                    <div>
                                        <%-- start web service invocation --%><hr/>
                                        <p>Vote average:</p> 
                                        <%
                                            stars.Stars_Service service = new stars.Stars_Service();
                                            stars.Stars port = service.getStarsPort();
                                            // TODO initialize WS operation arguments here
                                            float average = trm.getVote_average();
                                            // TODO process result here
                                            java.lang.String result = port.giveStars(average);
                                            int stars = Integer.parseInt(result);
                                            for(int i = 0; i < stars; i++){
                                            %>
                                                <i class="fas fa-star"></i>
                                            <%
                                            }
                                        %>
                                        <%-- end web service invocation --%><hr/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </td>
            </tr>
            
            <a href="rentingForm.html"><h3>Try</h3></a>
        </table>
    </body>
</html>

