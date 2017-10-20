package control;


import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import email.EnvioEmail;
import entidade.Cliente;
import entidade.Endereco;
import entidade.Orcamento;
import entidade.Telefone;
import net.sf.jasperreports.engine.JRException;
import pdf.GeradorPdf;
import util.Upload;

@WebServlet({"/ServletControle", "/orcamento" })
@MultipartConfig
public class ServletControle extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ServletControle() {
		super();

	}
	
	
	
	protected void execucao(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if(request.getServletPath().equals("/orcamento")) {
			orcamento(request, response);
			
		}
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		execucao(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		execucao(request, response);
	}
	
	
	//método pra orcamento

	protected void orcamento(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Telefone te = new Telefone(null, request.getParameter("telefone"));
		
		//cliente e telefone
		Cliente c = new Cliente();
		List<Telefone> lista = new ArrayList<Telefone>();
		
		lista.add(te);
		
		

		c.setNome(request.getParameter("nome"));
		c.setEmail(request.getParameter("email"));
		c.setTelefone(lista);
		
		//orcamento
		Orcamento o = new Orcamento();
		o.setIdAparelho(null);
		o.setNumdeSerie(request.getParameter("serie"));
		o.setEquipamento(request.getParameter("equipamento"));
		o.setModelo(request.getParameter("modelo"));
		o.setOrigem(request.getParameter("origem"));
		o.setCor(request.getParameter("cor"));
		o.setProblema(request.getParameter("problema"));
		o.setDescricao(request.getParameter("descricao"));
		o.setCliente(c);
		o.getCliente().setTelefone(lista);;
		o.getCliente().setCep(request.getParameter("cep"));
		
		o.setUrlImg(request.getServletContext().getRealPath("img") + File.separator + "logo-branco.png");
		//endereco
		Endereco e = new Endereco(null, request.getParameter("rua"), request.getParameter("num"), request.getParameter("bairro"),request.getParameter("cidade"));
	
		o.getCliente().setEndereco(e);
		List<Orcamento> orc= new ArrayList<Orcamento>();
		orc.add(o);
		System.out.println(o.toString());
		
		try {
			System.out.println(o.toString());
			String frente = Upload.upload(request, response, request.getPart("frente"));
			String lateral = Upload.upload(request, response, request.getPart("lateral"));
			String verso = Upload.upload(request, response, request.getPart("verso"));
			String path = request.getServletContext().getRealPath("upFotos")+"//";
			
			//EnvioEmail.orcamento(request.getServletContext().getRealPath("img"),"mauriciomourams@gmail.com","Orçamento", o,path+frente, path+lateral,path+verso);
			GeradorPdf.gerar(orc, request.getServletContext().getRealPath("pdf"));
			request.setAttribute("message", "<div class='alert-alert-success'>Seu Orçamento foi enviado com sucesso, Aguarde a Resposta</div>");
			request.getRequestDispatcher("index.jsp#orcamento").forward(request, response);
			System.out.println(path);
		} catch (Exception e1) {
			e1.printStackTrace();
		}
	}

}
