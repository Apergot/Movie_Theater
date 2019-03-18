
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
            int limit = 6;
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
        <div style="width:<%= 250 * limit + 10 %>px; margin: 0 auto;">
            <%}%>

            <div style="float: left; margin-left: 25px; width: 220px;">
                <%
                    String title = trm.getTitle();
                    if (title.length() > 25) {
                        title = title.trim().substring(0,25) + "...";
                    }
                %>
                <a href="infotrm.jsp?id=<%= trm.getId()%>"><button onclick><img src = "<%=ImagenPrueba%>" alt = "poster" width = "202" height = "302"></button></a>
                <p style="text-align:center"><%= title %></p>
            </div>
            <%
                if (i % limit == limit-1) {
            %>
        </div>
        <div style="clear:both"></div>
        <%            }
        %>
    <%
        }
    %>
</body>
</html>