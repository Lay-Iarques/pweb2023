<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Cadastro de Usuário</title>
  </head>
<body>
<%
	String nome = request.getParameter("nameCrud");
	if (nome == null)
		nome = "";

	String email = request.getParameter("email");
	if (email == null)
		email = "";
	
	String senha1 = request.getParameter("senha1");
	String senha2 = request.getParameter("senha2");
	String mensagem = request.getParameter("mensagem");
	
	if(senha1 != senha2) {
		
	}

%>
	<div class="container-fluid">
    <h1>Cadastro de Usuário</h1> 
    <form method="post" action="cadastrarUsuario">
        <label for="nameCrud">Nome:</label>
        <input type="text" name="nameCrud" id="nameCrud" value="<%=nome %>">
        <label for="email">Email:</label>
        <input type="text" name="email" id="email" value="<%=email %>">
        <label for="senha">Senha:</label>
        <input type="password" name="senha1" id="senha1">
        <label for="senha">Repita a Senha:</label>
        <input type="password" name="senha2" id="senha2">
        <input class="btn btn-primary" type="submit" value="Salvar">
        <a class="btn btn-primary" href="cadastrarUsuario" role="button">Listar Usuario</a>       
        <a class="btn btn-primary" href="index.html" role="button">Voltar</a>
        <div><span name="mensagem" value="<%=mensagem %>"></span></div> 
		</form>
		</div>
</body>
</html>