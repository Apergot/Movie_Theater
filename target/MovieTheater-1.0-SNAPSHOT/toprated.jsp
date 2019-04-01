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
    </head>
    <style>
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
        }

        li {
            float: left;
        }

        li a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        li a:hover {
            background-color: #111;
        } 

        .footbuttons{
            
            margin: 50px -50px; 
            position:relative;
            top:50%; 
            left:50%;
        }
        .footbuttons .Button {
            background-color: #333;
            border: none;
            color: white;
            padding: 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 12px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 12px;
        }


    </style>
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
                    <a href="infotrm.jsp?id=<%= trm.getId()%>"><img src = "<%=ImagenPrueba%>"></a>
                </div>
                <div class="content">
                    <h2><%= title%><br><span> <%=trm.getVote_average()%></span></h2>
                    <!--<p>Aquí hay que poner la descripción, vamos a ver si funciona primero</p>-->
                </div>
            </div>

            <%
                }
            %>
        </div>
        <div class="footbuttons">
            <a href="toprated.jsp?numPag=<%=numPag - 1%>"><button class="Button">Last Page</button></a>
            <a href="toprated.jsp?numPag=<%=numPag + 1%>"><button class="Button">Next Page</button></a>
        </div>
    </body>
</html>