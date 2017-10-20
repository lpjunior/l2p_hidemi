package control;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import email.EnvioEmail;

@WebServlet({ "/solicita", "/recovery" })
public class ServletRecupera extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private HttpSession session;
    public ServletRecupera() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		final String token = UUID.randomUUID().toString();
		session = request.getSession();
		session.setAttribute("token", token);
		if(request.getServletPath().equalsIgnoreCase("solicita"))
			new EnvioEmail().htmlMail("", "emaildohidemi", "", "", "", "", "http://localhost:8080/projeto-l2p-hidemi2.2/recovery?token=" + token);
		else if(request.getServletPath().equalsIgnoreCase("recovery")) {
			if(request.getParameter("token").equals(request.getSession().getAttribute("token"))) {
				//BD.atualizaSenha(request.getParameter("senha"));
				session = request.getSession();
				session.removeAttribute("token");
				String senha = UUID.randomUUID().toString();
				
				//BD.trocaSenha(senha);
				new EnvioEmail().htmlMail("", "emaildohidemi", "", "", "", "", "Sua nova senha é: <strong>" + senha + "</strong>" );
				session.setAttribute("mudaSenha", Boolean.TRUE);
			}
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}
}
