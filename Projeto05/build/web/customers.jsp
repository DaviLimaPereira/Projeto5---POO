<%-- 
    Document   : clientes
    Created on : 05/05/2019, 15:27:10
    Author     : davil
--%>

<%@page import="br.com.fatecpg.jdbc.Customer"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
       
        <title>JavaDB - Cliente</title>
        
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
        <h2>Clientes</h2>
        <h3><a href="index.jsp">Voltar a Página Principal</a></h3>
        <%try{%>
        <% ArrayList<Customer> list = Customer.getList(); %>
            <div class="container">
                <div class="row">
                    <div class="col">ID</div>
                    <div class="col">NOME</div>
                    <div class="col">EMAIL</div>
                    <div class="col">DETALHES</div>
                </div>
                <% for(Customer c: list){ %>
                <div class="row">
                    <div class="col"><%= c.getId()%></div>
                    <div class="col"><%= c.getName()%></div>
                    <div class="col"><%= c.getEmail()%></div>
                    <div class="col"><a href="details_customers.jsp?id=<%= c.getId()%>">Ver Detalhes</a></div>
                </div>
                <%}%>
            </div>
            <!--
            <table border="1">
                <tr>
                    <th>ID</th>
                    <th>NOME</th>
                    <th>EMAIL</th>
                    <th>DETALHES</th>
                </tr>
                <% for(Customer c: list){ %>
                <tr>
                    <td><%= c.getId()%></td>
                    <td><%= c.getName()%></td>
                    <td><%= c.getEmail()%></td>
                    <td><a href="details_customers.jsp?id=<%= c.getId()%>">Ver Detalhes</a></td>
                </tr>
                <%}%>
            </table>
            -->
        <%} catch(Exception e){%>
            <h3 style="color: red"><%= e.getMessage()%></h3>
        <%}%>
        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>    
</html>
