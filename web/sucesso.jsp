<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<title>Sucesso</title>
<!-- Bootstrap -->
<link href="./css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="./css/sticky-footer.css" rel="stylesheet" type="text/css" />
</head>
<body>

	<div class="container">
		<div class="mt-1">
			<h1>Logado com sucesso!</h1>
		</div>
		<p class="lead">
			Usuário:
                        
			<%=session.getAttribute("NomeUsuarioLogado")%></p>
		<p>
			<a href=./ServLet1>Ir para ServLet1</a>
		</p>
		<p><%=new SimpleDateFormat("dd/MM/yyyy").format(new Date())%></p>
	</div>

</body>
</html>