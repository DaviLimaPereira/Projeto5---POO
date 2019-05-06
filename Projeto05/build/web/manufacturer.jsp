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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>JavaDB - Fabricantes</title>
    </head>
    <body>
        <nav class="navbar bg-dark text-white navbar-expand-md navbar-bg">
    <div class="container">
        <!-- Brand -->
        <a class="navbar-brand" href="index.jsp">Inicio</a>

        <!-- Toggler/collapsibe Button -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"> JavaDB </span>
        </button>

        <!-- Navbar links -->
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="navbar-nav ml-auto"> 
                
                
                <li class="nav-item">
                    <a class="btn btn-outline-success ml-2 my-2 my-sm-0" href="customers.jsp">Clientes</a>
                </li>
                <li class="nav-item">
                    <a class="btn btn-outline-success ml-2 my-2 my-sm-0" href="manufacturer.jsp">Fabricantes</a>
                </li>
                
            </ul>
        </div> 
    </div>
</nav>
        
        <h1>JavaDB</h1>
        <h2>Fabricantes</h2>
        
        <%try{%>
        <% ArrayList<Manufacturer> list = Manufacturer.getList(); %>
            <table class="table">
                <tr class="tr">
                    <th class="th">ID</th>
                    <th class="th">NOME</th>
                    <th class="th">CIDADE</th>
                    <th class="th">ESTADO</th>
                    <th class="th">EMAIL</th>
                    <th class="th">DETALHES</th>
                </tr>
                <% for(Manufacturer m: list){ %>
                <tr class="tr">
                    <td class="td"><%= m.getId()%></td>
                    <td class="td"><%= m.getName()%></td>
                    <td class="td"><%= m.getCity()%></td>
                    <td class="td"><%= m.getState()%></td>
                    <td class="td"><%= m.getEmail()%></td>
                    <td class="td"><a href="details_manufacturers.jsp?id=<%= m.getId()%>">Ver Detalhes</a></td>
                </tr>
                <%}%>
            </table>
        <%} catch(Exception e){%>
            <h3 style="color: red"><%= e.getMessage()%></h3>
        <%}%>
    </body>
</html>
