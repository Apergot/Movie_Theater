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
                        <p>Overview: <%= trm.getOverview() %></p>
                        <div>
                            <p>Release Date: <%= trm.getRelease_date()%></p>
                            <div>
                                <p>Average Score: <%= trm.getVote_average()%></p>
                                <div>
                                    <p>Original Title: <%= trm.getOriginal_title()%></p>
                                    <div>
                            
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
    </body>
</html>

