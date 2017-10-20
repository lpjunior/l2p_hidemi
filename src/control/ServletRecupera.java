package control;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import email.EnvioEmail;

@WebServlet({ "/solicita", "/recovery" })
public class ServletRecupera extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ServletRecupera() {
        super();
    }
/*
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		final String token = UUID.randomUUID().toString();
		request.getSession().setAttribute("token", token);
		
		if(request.getServletPath().equalsIgnoreCase("solicita"))
			new EnvioEmail().htmlMail("", "emaildohidemi", "", "", "", "", "http://localhost:8080/site/recovery?token=" + token);
		else if(request.getServletPath().equalsIgnoreCase("recovery")) {
			if(request.getParameter("token").equals(request.getSession().getAttribute("token"))) {
				BD.atualizaSenha(request.getParameter("senha"));
				request.getSession().removeAttribute("token");
			}
		}
		
	}
*/
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println(HttpServletRequest.getServerName());
	}
}
