<%-- 
    Document   : details_manufacturers
    Created on : 05/05/2019, 15:46:43
    Author     : davil
--%>

<%@page import="br.com.fatecpg.jdbc.Product"%>
<%@page import="br.com.fatecpg.jdbc.Manufacturer"%>
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
                <span class="navbar-toggler-icon"> JavaDB </span>

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
        
        <div class="container mt-5">
            <h1 class="text-center py-4">JavaDB</h1>
            <h2 class="text-center py-4">Produtos do Fabricante</h2>
        
            <%try{%>
                <% int id = Integer.parseInt(request.getParameter("id")); %>
                <% Manufacturer m = Manufacturer.getManufacturer(id); %>
                <% if(m != null){ %>
                    <h3>ID: <U><%=id%> </U></h3>
                    <h3>NOME: <U><%=m.getName()%> </U></h3>
                    <hr>
                    <div class="col-12 mb-4">
                    <table class="table mt-2 text-center">
                        <thead class="bg-dark text-white">
                        <tr>
                            <th>CÓDIGO</th>
                            <th>TIPO</th>
                            <th>DESCRIÇÃO</th>
                        </tr>
                        </thead>
                        <tbody>
                        <% for(Product p: Product.getList(id)){ %>
                            <tr>
                                <td><%=p.getId() %></td>
                                <td><%=p.getProductCode() %></td>
                                <td><%=p.getDescription() %></td>
                            </tr>
                        <%}%>
                        </tbody>
                    </table>
                    </div>
                <% }else{ %>
                <h3 style="color: red">Fabricante <%=id%> não encontrado!</h3>
                <%}%>
            <%} catch(Exception e){%>
                <h3 style="color: red"><%= e.getMessage()%></h3>
            <%}%>
        </div>
    </body>
</html>
