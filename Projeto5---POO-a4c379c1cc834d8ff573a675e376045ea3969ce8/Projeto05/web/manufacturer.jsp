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
        
          <style>
              
            body {
	background-color: #BDBDBD;	
                        }

        </style>
        
    </head>
    <body>
        <nav class="navbar fixed-top bg-dark text-white navbar-expand-md navbar-bg">
    <div class="container">
        <!-- Brand -->
         <h2>JAVADB - Fabricantes</h2>

        <!-- Toggler/collapsibe Button -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon">JavaDB - Fabricantes</span>
        </button>

        <!-- Navbar links -->
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="navbar-nav ml-auto"> 
                <li class="nav-item">
                    <a class="btn btn-outline-success ml-2 my-2 my-sm-0" href="index.jsp">Inicio</a>
                </li>
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
        <br><br><br><br><br>
        <div class="container mt-5">
        
        <%try{%>
        <% ArrayList<Manufacturer> list = Manufacturer.getList(); %>
            <div class="col-12 mb-4">
                <table class="table table-hover table-striped table-bordered mt-2 text-center">
                    <thead class="thead-dark">
                        <tr>
                            <th >ID</th>
                            <th >NOME</th>
                            <th >CIDADE</th>
                            <th >ESTADO</th>
                            <th >EMAIL</th>
                            <th >DETALHES</th>
                        </tr>
                    </thead>
                    <tbody style="background: white;">
                <% for(Manufacturer m: list){ %>
                <tr>
                    <td><%= m.getId()%></td>
                    <td><%= m.getName()%></td>
                    <td><%= m.getCity()%></td>
                    <td><%= m.getState()%></td>
                    <td><%= m.getEmail()%></td>
                    <td><a class="btn btn-outline-dark" href="details_manufacturers.jsp?id=<%= m.getId()%>">Ver Detalhes</a></td>
                </tr>
                <%}%>
                        </tbody>
            </table>
        <%} catch(Exception e){%>
            <h3 style="color: red"><%= e.getMessage()%></h3>
        <%}%>
        
    </body>
</html>
