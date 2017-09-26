package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.DisparaEmail;

@WebServlet({ "/cli/salvar", "/cli/buscar", "/cli/excluir" })
public class ServletCliente extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static final String PREFIX = "/cli/";

	public ServletCliente() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// buscar, listar e excluir
		if (request.getServletPath().equals(PREFIX + "buscar")) {
			if (request.getParameter("id") != null) {
				Long id = Long.parseLong(request.getParameter("id"));
				buscar(id, request, response);
			} else if (request.getParameter("nome") != null) {
				String nome = request.getParameter("nome");
				buscar(nome, request, response);
			} else {
				buscar(request, response);
			}
		} else if (request.getServletPath().equals(PREFIX + "excluir")) {
			excluir(request, response);
		} else {
			erro404(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// salvar
		if (request.getServletPath().equals(PREFIX + "salvar")) {
			salvar(request, response);
		} else {
			erro404(request, response);
		}
	}

	private void salvar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (request.getParameter("id") != null) {
			response.getWriter().append("requisicao POST via chamada editar");
			if (DisparaEmail.envia("mauriciomourams@gmail.com"))
				response.getWriter().append("Email enviado com sucesso");
			else
				response.getWriter().append("Falha ao enviar email");
		} else {
			response.getWriter().append("requisicao POST via chamada salvar");
		}
	}

	// buscar pelo id
	private void buscar(Long id, HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("requisicao GET via chamada buscar pelo id " + id);
	}

	// buscar pelo nome
	private void buscar(String nome, HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("requisicao GET via chamada buscar pelo nome " + nome);
	}

	// buscar todos
	private void buscar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("requisicao GET via chamada buscar todos");
	}

	private void excluir(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("requisicao GET via chamada excluir");
	}

	private void erro404(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("requisicao nao encontrada");
	}
}
