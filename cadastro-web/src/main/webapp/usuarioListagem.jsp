<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Cadastro Web</title>
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
		crossorigin="anonymous">
</head>
<body>
	<div class="container-fluid">
		<h1>Lista de Usuários</h1>
		<table class="table">
			<thead>
				<tr>
					<th>ID</th>
					<th>Nome</th>
					<th>Email</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${usuarios}" var="usu" varStatus="id">
					<tr class="${id.count % 2 == 0 ? 'table-primary' : 'table-secondary'}">
						<td>${usu.id}</td>
						<td>${usu.nome}</td>
						<td><a href="mailto:${usu.email}">${usu.email}</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="usuarioCadastro.jsp" class="btn btn-primary">Voltar</a>
	</div>
</body>
</html>