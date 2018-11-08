package br.com.caelum.mvc.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdicionaContatoLogic implements Logica {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res)
			throws Exception {
//		Connection connection = (Connection) req.getAttribute("conexao");
//		List<Contato> lista = new ContatoDao(connection).getLista();
//		req.setAttribute("contatos", lista);
		return "/WEB-INF/jsp/adiciona-contato.jsp";

	}

}
