package control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entidade.Adm;
import persistencia.AdmDao;

/**
 * Servlet implementation class ControleLogin
 */
@WebServlet({"/ControleLogin","/Login","/admin/Logout"})
public class ControleLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ControleLogin() {
		super();

	}

	protected void Verificacao(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url = request.getServletPath();
		if(url.equals("/Login")) {
			login(request, response);
			
		} 
		if(url.equals("/admin/Logout")) {
			logout(request, response);
			
		}
		
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Verificacao(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Verificacao(request, response);
	}
	
	protected void login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		AdmDao ad = new AdmDao();
		HttpSession sessao = request.getSession();
		String email = request.getParameter("ademail");
		String senha = request.getParameter("adsenha");
		try {
			Adm admin = ad.login(email, senha);
			if (admin != null) {
				sessao.setAttribute("admin", admin);
				response.sendRedirect("admin/index.jsp");
			}else {
				request.setAttribute("msg", "<div class='alert alert-info'>Usuario ou senha invalidos, tente novamente</div>");
				request.getRequestDispatcher("admin.jsp").forward(request, response);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
	protected void logout(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		HttpSession sessao = request.getSession();
		sessao.removeAttribute("admin");
		
	
		response.sendRedirect("../admin.jsp");
	}

}
