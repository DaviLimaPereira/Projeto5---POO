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
        <title>JavaDB - Cliente</title>
    </head>
    <body>
        <h1>JavaDB</h1>
        <h2>Clientes</h2>
        <h3><a href="index.jsp">Voltar a Página Principal</a></h3>
        <%try{%>
        <% ArrayList<Customer> list = Customer.getList(); %>
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
        <%} catch(Exception e){%>
            <h3 style="color: red"><%= e.getMessage()%></h3>
        <%}%>
    </body>    
</html>
