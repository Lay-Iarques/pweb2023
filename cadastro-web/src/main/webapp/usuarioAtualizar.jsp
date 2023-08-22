<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body>

    <form action="alterarUsuario" method="post">
    	<input type="hidden" name="id" value="${usuario.id}">
        <label for="nome">Nome:</label>
        <input type="nome" name="nome" id="nome" value="${usuario.nome}">
        <label for="email">E-mail:</label>
        <input type="text" name="email" id="email" value="${usuario.email}">
        <label for="senha">Senha:</label>
        <input type="password" name="senha01" id="senha">     
        <label for="senha">Senha:</label>
        <input type="password" name="senha02" id="senha">    
    	<input type="submit" value="Salvar">
    </form>
    <c:if test="${not empty mensagem}">
    	<hr>
    	<div class="alert alert-danger" role="alert">
    		<span>${mensagem}</span>
    	</div>
    </c:if>
</body>
</body>
</html>