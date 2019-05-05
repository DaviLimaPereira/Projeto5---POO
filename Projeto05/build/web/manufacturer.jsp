<%-- 
    Document   : manufacturer
    Created on : 05/05/2019, 15:43:40
    Author     : davil
--%>


<%@page import="br.com.fatecpg.jdbc.Manufacturer"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JavaDB - Fabricantes</title>
    </head>
    <body>
        <h1>JavaDB</h1>
        <h2>Fabricantes</h2>
        <h3><a href="index.jsp">Voltar a Página Principal</a></h3>
        <%try{%>
        <% ArrayList<Manufacturer> list = Manufacturer.getList(); %>
            <table border="1">
                <tr>
                    <th>ID</th>
                    <th>NOME</th>
                    <th>CIDADE</th>
                    <th>ESTADO</th>
                    <th>EMAIL</th>
                    <th>DETALHES</th>
                </tr>
                <% for(Manufacturer m: list){ %>
                <tr>
                    <td><%= m.getId()%></td>
                    <td><%= m.getName()%></td>
                    <td><%= m.getCity()%></td>
                    <td><%= m.getState()%></td>
                    <td><%= m.getEmail()%></td>
                    <td><a href="details_manufacturers.jsp?id=<%= m.getId()%>">Ver Detalhes</a></td>
                </tr>
                <%}%>
            </table>
        <%} catch(Exception e){%>
            <h3 style="color: red"><%= e.getMessage()%></h3>
        <%}%>
    </body>
</html>
