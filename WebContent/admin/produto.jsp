<jsp:include page="header.jsp"></jsp:include>
  
  <header id="main-header" class="py-2 bg-primary text-white">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <h2><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Produto</h2>
        </div>
      </div>
    </div>
  </header>

  <!-- BUSCAR -->
  <section id="actions" class="py-4 mb-4 bg-faded">
    <div class="container">
      <div class="row">
       <!--  <div class="col-md-6 offset-md-6">
          <div class="input-group">
            <input type="text" class="form-control" placeholder="Pesquizar...">
            <span class="input-group-btn">
              <button class="btn btn-primary">Buscar</button>
            </span>
          </div>
        </div> -->
        <div class="col-md-5 mr-auto">
          <a href="index.jsp" class="btn btn-secondary btn-block"><i class="fa fa-arrow-left"></i> Voltar Painel de Controle</a>
        </div>
		<div class="col-md-2">
          
        </div>
        <div class="col-md-5">
          
        </div>
      </div>
    </div>
  </section>

  <!-- PRODUTOS-->
  <section id="produto">
    <div class="container">
      <div class="row">
        <div class="col">
          <div class="card">
            <div class="card-header">
              <h4>Produto</h4>
            </div>
            <div class="table table-responsive">
              <table id="tabela_produto" class="table table-striped table-bordered" cellspacing="0" width="100%">
         <thead class="thead-inverse">
                  <tr>
                    <th>Nº</th>
                    <th>Produto</th>
                    <th>Nome</th>
                    <th>Descrição</th>
                    <th>Data</th>
                    <th>Preço</th>
                    <th class="text-center">Editar</th>
                    <th class="text-center">Excluir</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td scope="row">1</td>
                    <td>Imagem</td>
                    <td>iPhone S4</td>
                    <td>Produto de ótimo bom gosto</td>
                    <td>03/10/2017</td>
                    <td>R$500,00</td>
                    <td><a href="editar_produto.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                    <td><a href="index.jsp" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                  </tr>
                  <tr>
                    <td scope="row">2</td>
                    <td>Imagem</td>
                    <td>iPhone S4</td>
                    <td>Produto de ótimo bom gosto</td>
                    <td>03/10/2017</td>
                    <td>R$500,00</td>
                    <td><a href="editar_produto.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                    <td><a href="index.jsp" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                  </tr>
                  <tr>
                    <td scope="row">3</td>
                    <td>Imagem</td>
                    <td>iPhone 4S</td>
                    <td>Produto de ótimo bom gosto</td>
                    <td>03/10/2017</td>
                    <td>R$500,00</td>
                    <td><a href="editar_produto.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                    <td><a href="index.jsp" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                  </tr>
                  <tr>
                    <td scope="row">4</td>
                    <td>Imagem</td>
                    <td>iPhone 5S</td>
                    <td>Produto de ótimo bom gosto</td>
                    <td>03/10/2017</td>
                    <td>R$500,00</td>
                    <td><a href="editar_produto.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                    <td><a href="index.jsp" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                  </tr>
                  <tr>
                    <td scope="row">5</td>
                    <td>Imagem</td>
                    <td>iPhone 5C</td>
                    <td>Produto de ótimo bom gosto</td>
                    <td>03/10/2017</td>
                    <td>R$500,00</td>
                    <td><a href="editar_produto.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                    <td><a href="index.jsp" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                  </tr>
                  <tr>
                    <td scope="row">6</td>
                    <td>Imagem</td>
                    <td>iPhone 6</td>
                    <td>Produto de ótimo bom gosto</td>
                    <td>03/10/2017</td>
                    <td>R$500,00</td>
                    <td><a href="editar_produto.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                    <td><a href="index.jsp" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                  </tr>
                  <tr>
                    <td scope="row">7</td>
                    <td>Imagem</td>
                    <td>iPhone 6S</td>
                    <td>Produto de ótimo bom gosto</td>
                    <td>03/10/2017</td>
                    <td>R$500,00</td>
                    <td><a href="editar_produto.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                    <td><a href="index.jsp" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                  </tr>
                  <tr>
                    <td scope="row">8</td>
                    <td>Imagem</td>
                    <td>iPhone 6 Plus</td>
                    <td>Produto de ótimo bom gosto</td>
                    <td>03/10/2017</td>
                    <td>R$500,00</td>
                    <td><a href="editar_produto.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                    <td><a href="index.jsp" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                  </tr>
                  <tr>
                    <td scope="row">9</td>
                    <td>Imagem</td>
                    <td>iPhone 7</td>
                    <td>Produto de ótimo bom gosto</td>
                    <td>03/10/2017</td>
                    <td>R$500,00</td>
                    <td><a href="editar_produto.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                    <td><a href="index.jsp" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                  </tr>
                  <tr>
                    <td scope="row">10</td>
                    <td>Imagem</td>
                    <td>iPhone 7S</td>
                    <td>Produto de ótimo bom gosto</td>
                    <td>03/10/2017</td>
                    <td>R$500,00</td>
                    <td><a href="editar_produto.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                    <td><a href="index.jsp" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                  </tr>
                  <tr>
                    <td scope="row">11</td>
                    <td>Imagem</td>
                    <td>iPhone S4</td>
                    <td>Produto de ótimo bom gosto</td>
                    <td>03/10/2017</td>
                    <td>R$500,00</td>
                    <td><a href="editar_produto.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                    <td><a href="#" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                  </tr>
                  <tr>
                    <td scope="row">12</td>
                    <td>Imagem</td>
                    <td>iPhone 7 Plus</td>
                    <td>Produto de ótimo bom gosto</td>
                    <td>03/10/2017</td>
                    <td>R$500,00</td>
                    <td><a href="editar_produto.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                    <td><a href="#" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                  </tr>
                  <tr>
                    <td scope="row">13</td>
                    <td>Imagem</td>
                    <td>iPhone 8</td>
                    <td>Produto de ótimo bom gosto</td>
                    <td>03/10/2017</td>
                    <td>R$500,00</td>
                    <td><a href="editar_produto.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                    <td><a href="#" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                  </tr>
                  <tr>
                    <td scope="row">14</td>
                    <td>Imagem</td>
                    <td>iPhone 8S</td>
                    <td>Produto de ótimo bom gosto</td>
                    <td>03/10/2017</td>
                    <td>R$500,00</td>
                    <td><a href="editar_produto.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                    <td><a href="#" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                  </tr>
                  <tr>
                    <td scope="row">15</td>
                    <td>Imagem</td>
                    <td>iPhone 8 Plus</td>
                    <td>Produto de ótimo bom gosto</td>
                    <td>03/10/2017</td>
                    <td>R$500,00</td>
                    <td><a href="editar_produto.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                    <td><a href="#" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                  </tr>
                  <tr>
                    <td scope="row">16</td>
                    <td>Imagem</td>
                    <td>iPhone S4</td>
                    <td>Produto de ótimo bom gosto</td>
                    <td>03/10/2017</td>
                    <td>R$500,00</td>
                    <td><a href="editar_produto.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                    <td><a href="#" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                  </tr>
                  <tr>
                    <td scope="row">17</td>
                    <td>Imagem</td>
                    <td>iPhone S4</td>
                    <td>Produto de ótimo bom gosto</td>
                    <td>03/10/2017</td>
                    <td>R$500,00</td>
                    <td><a href="editar_produto.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                    <td><a href="#" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                  </tr>
                  <tr>
                    <td scope="row">18</td>
                    <td>Imagem</td>
                    <td>iPhone S4</td>
                    <td>Produto de ótimo bom gosto</td>
                    <td>03/10/2017</td>
                    <td>R$500,00</td>
                    <td><a href="editar_produto.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                    <td><a href="#" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                  </tr>
                  <tr>
                    <td scope="row">19</td>
                    <td>Imagem</td>
                    <td>iPhone S4</td>
                    <td>Produto de ótimo bom gosto</td>
                    <td>03/10/2017</td>
                    <td>R$500,00</td>
                    <td><a href="editar_produto.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                    <td><a href="#" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                  </tr>
                  <tr>
                    <td scope="row">20</td>
                    <td>Imagem</td>
                    <td>iPhone S4</td>
                    <td>Produto de ótimo bom gosto</td>
                    <td>03/10/2017</td>
                    <td>R$500,00</td>
                    <td><a href="editar_produto.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                    <td><a href="#" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                  </tr>
                  <tr>
                    <td scope="row">21</td>
                    <td>Imagem</td>
                    <td>iPhone S4</td>
                    <td>Produto de ótimo bom gosto</td>
                    <td>03/10/2017</td>
                    <td>R$500,00</td>
                    <td><a href="editar_produto.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                    <td><a href="#" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                  </tr>
                  <tr>
                    <td scope="row">22</td>
                    <td>Imagem</td>
                    <td>iPhone S4</td>
                    <td>Produto de ótimo bom gosto</td>
                    <td>03/10/2017</td>
                    <td>R$500,00</td>
                    <td><a href="editar_produto.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                    <td><a href="#" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                  </tr>
                  <tr>
                    <td scope="row">23</td>
                    <td>Imagem</td>
                    <td>iPhone S4</td>
                    <td>Produto de ótimo bom gosto</td>
                    <td>03/10/2017</td>
                    <td>R$500,00</td>
                    <td><a href="editar_produto.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                    <td><a href="#" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                  </tr>
                  <tr>
                    <td scope="row">24</td>
                    <td>Imagem</td>
                    <td>iPhone S4</td>
                    <td>Produto de ótimo bom gosto</td>
                    <td>03/10/2017</td>
                    <td>R$500,00</td>
                    <td><a href="editar_produto.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                    <td><a href="#" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                  </tr>
                  <tr>
                    <td scope="row">25</td>
                    <td>Imagem</td>
                    <td>iPhone S4</td>
                    <td>Produto de ótimo bom gosto</td>
                    <td>03/10/2017</td>
                    <td>R$500,00</td>
                    <td><a href="editar_produto.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                    <td><a href="#" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                  </tr>
              </tbody>
            </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

<jsp:include page="footer.jsp"></jsp:include>
