package br.com.caelum.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

@WebServlet("/adicionaContato")
public class AdicionaContatoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		Contato contato = new Contato();
		contato.setNome(request.getParameter("nome"));
		contato.setEmail(request.getParameter("email"));
		contato.setEndereco(request.getParameter("endereco"));
		
		String dataString = request.getParameter("dataNascimento");
		try {
			Date dateParse = new SimpleDateFormat("dd/MM/yyyy").parse(dataString);
			Calendar dataCalendar = Calendar.getInstance();
			dataCalendar.setTime(dateParse);
			contato.setDataNascimento(dataCalendar);

			Connection connection = (Connection) request.getAttribute("conexao");
			ContatoDao contatoDao = new ContatoDao(connection);
			contatoDao.adiciona(contato);
			
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/jsp/contato-adicionado.jsp");
			rd.forward(request, response);
			
		} catch (ParseException e) {
			out.println("Erro de conversão da data");
		}	
		
		
	}

}
