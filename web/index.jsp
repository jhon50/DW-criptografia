<%-- 
    Document   : index
    Created on : 15/09/2017, 13:49:01
    Author     : Leo
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
<!-- Bootstrap -->
<link href="./css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="./css/signin.css" rel="stylesheet" type="text/css" />
</head>
<body>

	<div class="container">

		<form class="form-signin" action="VerificarLogin" method="post">
			<h2 class="form-signin-heading">Login</h2>
			<label for="nome" class="sr-only">Nome do usuário</label> <input
				type="text" id="nome" name="nome" class="form-control"
				placeholder="Nome do usuário" required autofocus> <label
				for="senha" class="sr-only">Senha</label> <input type="password"
				id="senha" name="senha" class="form-control" placeholder="Senha"
				required>
			<button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
		</form>

	</div>
	<!-- /container -->
</body>
</html>