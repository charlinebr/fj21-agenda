<%@page import="br.com.caelum.agenda.dao.ContatoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista Contato</title>
</head>
<body>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:import url="cabecalho.jsp"/>	
	
	<table>
		<c:forEach var="contato" items="${contatos}">
			<tr>
				<td>${contato.nome}</td>
				<td>
					<c:if test="${not empty contato.email}">
						<a href="mailto:${contato.email}">${contato.email }</a>
					</c:if>
					<c:if test="${ empty contato.email}">
						Email não informado
					</c:if>
				</td>
				<td>${contato.endereco}</td>
				<td>
					<fmt:formatDate pattern="dd/MM/yyyy" value="${contato.dataNascimento.time}" />
				</td>
				<td>
					<a href="mvc?logica=AlteraContatoLogic&id=${contato.id}">Alterar</a>
					<a href="mvc?logica=RemoveContatoLogic&id=${contato.id}">Remover</a>
				</td>	
			</tr>
		</c:forEach>				
	</table>
	<br><br>
	<a href="mvc?logica=AdicionaContatoLogic">Adicionar Contato</a>
<c:import url="rodape.jsp"/>		
</body>
</html>