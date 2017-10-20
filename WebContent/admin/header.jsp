<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="">
  <meta name="author" content="">
  
  <!-- ICONE FAVICON -->
  <link rel="icon" href="#">
  <!-- inserindo css do Font Awesome -->
  <link rel="stylesheet" href="bootstrap/css/font-awesome.min.css" media="all"/>
  <!-- inserindo css do Bootstrap -->
  <link rel="stylesheet" href="bootstrap/css/bootstrap.css" media="all"/>
  <link rel="stylesheet" href="bootstrap/css/style.css">
  <link rel="stylesheet" href="bootstrap/css/efeito-imagem.css" />
  
  <!-- DataTables CSS -->
    <link href="bootstrap/css/dataTables.bootstrap4.min.css" rel="stylesheet">
    
  <title>HidemiPhone | Admin</title>
<style type="text/css">
.alert-danger {
	color: rgb(252, 248, 227);
	background-color: rgba(255, 22, 27, 0.5);
	border-color: #444444;
}

.alert-success {
	color: #333;
	background-color: rgba(82, 255, 9, 0.45);
	border-color: #797979;
}

.alert-dismissable, .alert-dismissible {
	padding-right: 35px;
}

.alert {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
}

.alert-dismissable .close, .alert-dismissible .close {
	position: relative;
	top: -15px;
	right: -12px;
	color: inherit;
}


</style>

</head>
<body>
<div class="">
<nav class="navbar navbar-toggleable-sm navbar-inverse bg-inverse p-0">
    <div class="container-fluid">
      <button class="navbar-toggler navbar-toggler-right" data-toggle="collapse" data-target="#navbarNav">
        <span class="navbar-toggler-icon"></span>
      </button>
      <a href="index.jsp" class="navbar-brand mr-3"><h1 style="margin-bottom: 10px;font-size: 110%;"><i class="fa fa-apple fa-5" aria-hidden="true" style="color: white;font-size: 25pt;"></i> Hid<b style="font-size: 72%;font-style: exotc350_bd_btbold;">EM</b><b style="color: red;">i</b>Phone</h1></a>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item px-2">
            <a href="index.jsp" class="nav-link active">Painel de Controle</a>
          </li>
          <!-- <li class="nav-item px-2">
             <a href="produto.jsp" class="nav-link">Produto</a>
          </li>-->
          
        </ul>
        <ul class="navbar-nav ml-auto">
          <li class="nav-item dropdown mr-3">
            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown"> Produto</a>
            <div class="dropdown-menu">
              <a href="cadastrar_produto.jsp" class="dropdown-item">
                <i class="fa fa-cog"></i> Cadastrar Produto
              </a>
              <a href="editar_produto.jsp" class="dropdown-item">
              <i class="fa fa-edit"></i> Editar Produto
            </a>
            <a href="produto.jsp" class="dropdown-item">
              <i class="fa fa-list-alt"></i> Lista de Produto
            </a>
            </div>
          </li>
        </ul>
        
        <ul class="navbar-nav ml-auto">
          <li class="nav-item dropdown mr-3">
            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown"> Serviço</a>
            <div class="dropdown-menu">
              <a href="cadastrar_servico.jsp" class="dropdown-item">
                <i class="fa fa-cog"></i> Cadastrar Serviço
              </a>
              <a href="editar_servico.jsp" class="dropdown-item">
              <i class="fa fa-edit"></i> Editar Serviço
            </a>
            <a href="servico.jsp" class="dropdown-item">
              <i class="fa fa-list-alt"></i> Lista de Serviço
            </a>
            </div>
          </li>
        </ul>
        
        <ul class="navbar-nav ml-auto">
          <li class="nav-item dropdown mr-3">
            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown"><i class="fa fa-users"></i> Cliente</a>
            <div class="dropdown-menu">
              <a href="cadastrar_cliente.jsp" class="dropdown-item">
                <i class="fa fa-cog"></i> Cadastrar Cliente
              </a>
              <a href="editar_cliente.jsp" class="dropdown-item">
              <i class="fa fa-edit"></i> Editar Cliente
            </a>
            <a href="cliente.jsp" class="dropdown-item">
              <i class="fa fa-list-alt"></i> Lista de Cliente
            </a>
            </div>
          </li>
        </ul>

        <ul class="navbar-nav ml-auto">
          <li class="nav-item dropdown mr-3">
            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Bem vindo, {$ nome}!</a>
            <div class="dropdown-menu">
              <a href="perfil.jsp" class="dropdown-item">
                <i class="fa fa-user-circle"></i> Perfil
              </a>
              <a href="Logout" class="dropdown-item">
              <i class="fa fa-user-times"></i> Sair
            </a>
            </div>
          </li>
         <!--  
          <li class="nav-item">
            <a href="../index.jsp" class="nav-link">
              <i class="fa fa-user-times"></i> Sair
            </a>
          </li>
         --> 
        </ul>
      </div>
    </div>
  </nav>
  	