<%-- 
    Document   : details
    Created on : 05/05/2019, 11:30:36
    Author     : davil
--%>

<%@page import="br.com.fatecpg.jdbc.Order"%>
<%@page import="br.com.fatecpg.jdbc.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>JavaDB - Compras</title>
    </head>
    <body>
       <nav class="navbar bg-dark text-white navbar-expand-md navbar-bg">
    <div class="container">
        <!-- Brand -->
        <h2>JAVADB - Detalhes</h2>

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
        
        <h2 class="text-center py-4">Compras do Cliente</h2>
       
        <%try{%>
            <% int id = Integer.parseInt(request.getParameter("id")); %>
            <% Customer c = Customer.getCustomer(id); %>
            <% if(c != null){ %>
                <h3>ID: <U><%=id%> </U></h3>
                <h3>NOME: <U><%=c.getName()%> </U></h3>
                <hr>
                <table border="1">
                    <tr>
                        <th>Número</th>
                        <th>Data</th>
                        <th>Frete</th>
                    </tr>
                    <% for(Order o: Order.getList(id)){ %>
                    <tr>
                        <td><%=o.getNum()%></td>
                        <td><%=o.getSalesDate()%></td>
                        <td><%=o.getShippingCost()%></td>
                    </tr>
                    <%}%>
                </table>
            <% }else{ %>
            <h3 style="color: red">Cliente <%=id%> não encontrado!</h3>
            <%}%>
        <%} catch(Exception e){%>
            <h3 style="color: red"><%= e.getMessage()%></h3>
        <%}%>
       
    </body>
</html>
