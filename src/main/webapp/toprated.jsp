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
        <title>TRMovie</title>
    </head>
    <body>
        <h1>Movies</h1>
        <%  
            int limit = 8;
            UseTopRated prueba = new UseTopRated();
            List pelis = prueba.getTopRatedMovies();
            session.setAttribute("UseTopRatedClass", prueba);
            for (int i = 0; i < pelis.size(); i++) {
                TopRatedMovie trm = (TopRatedMovie) pelis.get(i);
                String ImagenPrueba = prueba.getPosterFromTRM(trm);
                
        %>
        <%
            if (i % limit == 0) {
        %>
        <div style="width:<%=100/limit%>; display:flex;">
            <%}%>

            <div style="display: block">
                <a href="infotrm.jsp?id=<%= trm.getId()%>"><button onclick><img src = <%= "https://image.tmdb.org/t/p/w500"+ImagenPrueba%> alt = "poster" width = "202" height = "302"></button></a>
                <br></br>
                <p style="text-align:center"><%= trm.getTitle()%></p>
            </div>
            <%
                if (i % limit == limit-1) {
            %>
        </div>
        <%            }
        %>
    <%
        }
    %>
</body>
</html>
