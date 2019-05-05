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
        <title>JavaDB - Produtos</title>
    </head>
    <body>
        <h1>JavaDB</h1>
        <h2>Produtos do Fabricante</h2>
        <h3><a href="manufacturer.jsp">Voltar a Página Fabricantes</a></h3>
        <%try{%>
            <% int id = Integer.parseInt(request.getParameter("id")); %>
            <% Manufacturer m = Manufacturer.getManufacturer(id); %>
            <% if(m != null){ %>
                <h3>ID: <U><%=id%> </U></h3>
                <h3>NOME: <U><%=m.getName()%> </U></h3>
                <hr>
                <table border="1">
                    <tr>
                        <th>CÓDIGO</th>
                        <th>TIPO</th>
                        <th>DESCRIÇÃO</th>
                    </tr>
                    <% for(Product p: Product.getList(id)){ %>
                    <tr>
                        <td><%=p.getId() %></td>
                        <td><%=p.getProductCode() %></td>
                        <td><%=p.getDescription() %></td>
                    </tr>
                    <%}%>
                </table>
            <% }else{ %>
            <h3 style="color: red">Fabricante <%=id%> não encontrado!</h3>
            <%}%>
        <%} catch(Exception e){%>
            <h3 style="color: red"><%= e.getMessage()%></h3>
        <%}%>
    </body>
</html>
