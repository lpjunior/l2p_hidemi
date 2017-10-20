<jsp:include page="header.jsp"></jsp:include>
<div class="">
  <header id="main-header" class="py-2 bg-primary text-white">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <h2><i class="fa fa-gear"></i> Painel de Controle</h2>
        </div>
      </div>
    </div>
  </header>
</div>
  <!-- BOTOES MODAL SECTION -->
  <section id="actions" class="py-4 mb-4 bg-faded">
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <a href="cadastrar_produto.jsp" class="btn btn-primary btn-block"><i class="fa fa-plus"></i> Cadastrar Produto</a>
        </div>
        <div class="col-md-4">
          <a href="cadastrar_servico.jsp" class="btn btn-success btn-block"><i class="fa fa-plus"></i> Cadastrar Serviço</a>
        </div>
        <div class="col-md-4">
          <a href="cadastrar_cliente.jsp" class="btn btn-warning btn-block"><i class="fa fa-plus"></i> Cadastrar Cliente</a>
        </div>
      </div>
    </div>
  </section>

  <!-- PRODUTO -->
  <section id="posts">
    <div class="container">
      <div class="row">
        <div class="col-md-9">
          <div class="card">
            <div class="card-header">
              <h4>Produtos</h4>
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
                    <td><a href="#" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                  </tr>
                  <tr>
                    <td scope="row">2</td>
                    <td>Imagem</td>
                    <td>iPhone S4</td>
                    <td>Produto de ótimo bom gosto</td>
                    <td>03/10/2017</td>
                    <td>R$500,00</td>
                    <td><a href="editar_produto.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                    <td><a href="#" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                  </tr>
                  <tr>
                    <td scope="row">3</td>
                    <td>Imagem</td>
                    <td>iPhone 4S</td>
                    <td>Produto de ótimo bom gosto</td>
                    <td>03/10/2017</td>
                    <td>R$500,00</td>
                    <td><a href="editar_produto.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                    <td><a href="#" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                  </tr>
                  <tr>
                    <td scope="row">4</td>
                    <td>Imagem</td>
                    <td>iPhone 5S</td>
                    <td>Produto de ótimo bom gosto</td>
                    <td>03/10/2017</td>
                    <td>R$500,00</td>
                    <td><a href="editar_produto.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                    <td><a href="#" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                  </tr>
                  <tr>
                    <td scope="row">5</td>
                    <td>Imagem</td>
                    <td>iPhone 5C</td>
                    <td>Produto de ótimo bom gosto</td>
                    <td>03/10/2017</td>
                    <td>R$500,00</td>
                    <td><a href="editar_produto.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                    <td><a href="#" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                  </tr>
                  <tr>
                    <td scope="row">6</td>
                    <td>Imagem</td>
                    <td>iPhone 6</td>
                    <td>Produto de ótimo bom gosto</td>
                    <td>03/10/2017</td>
                    <td>R$500,00</td>
                    <td><a href="editar_produto.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                    <td><a href="#" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                  </tr>
                  <tr>
                    <td scope="row">7</td>
                    <td>Imagem</td>
                    <td>iPhone 6S</td>
                    <td>Produto de ótimo bom gosto</td>
                    <td>03/10/2017</td>
                    <td>R$500,00</td>
                    <td><a href="editar_produto.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                    <td><a href="#" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                  </tr>
                  <tr>
                    <td scope="row">8</td>
                    <td>Imagem</td>
                    <td>iPhone 6 Plus</td>
                    <td>Produto de ótimo bom gosto</td>
                    <td>03/10/2017</td>
                    <td>R$500,00</td>
                    <td><a href="editar_produto.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                    <td><a href="#" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                  </tr>
                  <tr>
                    <td scope="row">9</td>
                    <td>Imagem</td>
                    <td>iPhone 7</td>
                    <td>Produto de ótimo bom gosto</td>
                    <td>03/10/2017</td>
                    <td>R$500,00</td>
                    <td><a href="editar_produto.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                    <td><a href="#" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                  </tr>
                  <tr>
                    <td scope="row">10</td>
                    <td>Imagem</td>
                    <td>iPhone 7S</td>
                    <td>Produto de ótimo bom gosto</td>
                    <td>03/10/2017</td>
                    <td>R$500,00</td>
                    <td><a href="editar_produto.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                    <td><a href="#" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
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
        <div class="col-md-3">
          <div class="card text-center card-primary text-white mb-3">
            <div class="card-block">
              <h3>Produto</h3>
              <h1 class="display-4"><i class="fa fa-pencil-square-o" aria-hidden="true""></i> 6</h1>
              <a href="produto.jsp" class="btn btn-sm btn-outline-secondary text-white">Visualizar</a>
            </div>
          </div>

          <div class="card text-center card-success text-white mb-3">
            <div class="card-block">
              <h3>Serviço</h3>
              <h1 class="display-4"><i class="fa fa-folder-open-o"></i> 4</h1>
              <a href="servico.jsp" class="btn btn-sm btn-outline-secondary text-white">Visualizar</a>
            </div>
          </div>

          <div class="card text-center card-warning text-white mb-3">
            <div class="card-block">
              <h3>Cliente</h3>
              <h1 class="display-4"><i class="fa fa-users"></i> 6</h1>
              <a href="cliente.jsp" class="btn btn-sm btn-outline-secondary text-white">Visualizar</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

 <jsp:include page="footer.jsp"></jsp:include>
