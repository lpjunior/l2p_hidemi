package control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import entidade.Produto;
import util.Upload;


@WebServlet({"/ControlePainelAdmin","/admin/cadastrar.html"})
public class ControlePainelAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ControlePainelAdmin() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		controlarAcao(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		controlarAcao(request, response);
	}
	
	protected void controlarAcao(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		controlarAcao(request, response);
		
		try {
			
			String  path = request.getContextPath();
			
			//PEGA A URL QUE FOI EXECUTADA
			String url = request.getServletPath();
			
			if(url.equalsIgnoreCase("/admin/cadastrar_produto.html")) {
				cadastrarProduto(request, response);
			}
					
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	protected void cadastrarProduto(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String nomeProd = request.getParameter("nomeProd");
			
			
			//Salvar os dados do formulário
			
			String path = getServletContext().getRealPath("upFotos")+"//";
			
			String descricaoProd = request.getParameter("descricaoProd");
			String preco = request.getParameter("preco");
			
			Produto prod = new Produto();
			String imagem_produto = Upload.upload(request, response, request.getPart("imagem_produto"));
			prod.setNome(nomeProd);
			prod.setFoto(imagem_produto);
			prod.setDescricao(descricaoProd);
			prod.setPreco(new Double(preco));
			
			request.setAttribute("msg", "<div class='alert alert-success text-center' id='div'><button type='button' class='close' data-dismiss='alert'>×</button><span class='glyphicon glyphicon-thumbs-up' style='font-size:20px;'></span> Cadastro Realizado com Sucesso!</div>");
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("msg", "<div class='alert alert-danger text-center' id='div'><button type='button' class='close' data-dismiss='alert'>×</button><span class='glyphicon glyphicon-thumbs-down' style='font-size:20px;'></span> Falha ao Cadastrar!</div>");
		}finally {
			request.getRequestDispatcher("cadastrar_produto.jsp").forward(request, response);
		}
	}
	

}
