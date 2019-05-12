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
        <title>JavaDB - Compras</title>
    </head>
    <body>
        <h1>JavaDB</h1>
        <h2>Compras do Clientes</h2>
        <h3><a href="index.jsp">Voltar</a></h3>
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
