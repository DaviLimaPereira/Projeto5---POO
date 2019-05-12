<%-- 
    Document   : index
    Created on : 05/05/2019, 11:27:38
    Author     : davil
--%>

<%@page import="br.com.fatecpg.jdbc.Customer"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <!--Meta tags Obrigatórias -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!--Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

        <title>JavaDB - Projeto 05</title>
        <style>
            body{
            
	background-color: #BDBDBD;
	background-image: url("img/database.jpg");
	-webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
        </style>
    </head>
    <body>
       <nav class="navbar bg-dark text-white navbar-expand-md navbar-bg">
    <div class="container">
        <!-- Brand -->
        <h1>JAVADB</h1>

        <!-- Toggler/collapsibe Button -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon">JavaDB - Home</span>
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
        
        
        <div class="container mt-5">
            
                <div class="container">
                   <div class="row">
                    <div class="col-sm">
                        <div class="card" style="width: 18rem;">
                            <img class="card-img-top" src="img/davi.png" alt="Imagem de capa do card">
                            <div class="card-body">
                                <h5 class="card-title">DAVI LIMA PEREIRA</h5>
                                <p class="card-text">Formado pela ETEC Praia Grande em 2011 como Técnico em Informatica. Atualmente cursando Analise e 
                                    Desenvolvimento de Sistemas pela Fatec Praia Grande.</p>
                                <a href="https://github.com/DaviLimaPereira" class="btn btn-primary">Github</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm">
                        <div class="card" style="width: 18rem;">
                            <img class="card-img-top" src="img/Rafa.jpg" alt="Imagem de capa do card">
                            <div class="card-body">
                                <h5 class="card-title">RAFAEL SOUSA</h5>
                                <p class="card-text">Formado pela ETEC Mongaguá em 2008 como Técnico em Administração. Atualmente cursando Analise e Desenvolvimento de Sistemas pela Fatec Praia Grande.</p>
                                <a href="https://github.com/Rafaelsansousa12" class="btn btn-primary">Github</a>
                            </div>
                        </div>
                    </div>
                   </div>
                </div>

                 
       
        <!--jQuery primeiro, depois Popper.js, depois Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  
    </body>
                    </html>