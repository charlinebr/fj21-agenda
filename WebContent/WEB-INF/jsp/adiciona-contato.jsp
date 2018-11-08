<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<link href="css/jquery.css" rel="stylesheet">
<script src="js/jquery.js"></script>
<script src="js/jquery-ui.js"></script>
<meta charset="UTF-8">
</head>
<body>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags/" prefix="caelum" %>

<c:import url="cabecalho.jsp"/>	

	<h1>Adiciona Contatos</h1>
	<hr/>
	<form action="adicionaContato" method="post">
		Nome: <input type="text" name="nome"/> <br />
		Email: <input type="text" name="email"/> <br />
		Endereço: <input type="text" name="endereco"/> <br />
		Data: <caelum:campoData id="dataNascimento"></caelum:campoData> <br />
		
		<input type="submit" submit="Gravar"/> <br />
	</form>

<c:import url="rodape.jsp"/>		
	
</body>
</html>