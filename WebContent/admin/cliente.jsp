<jsp:include page="header.jsp"></jsp:include>
<div>
  <header id="main-header" class="py-2 bg-warning text-white">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <h2><i class="fa fa-users"></i> Cliente</h2>
        </div>
      </div>
    </div>
  </header>
</div>
  <!-- ACTIONS -->
  <section id="actions" class="py-4 mb-4 bg-faded">
    <div class="container">
      <div class="row">
       <!-- <div class="col-md-6 offset-md-6">
          <div class="input-group">
            <input type="text" class="form-control" placeholder="Pesquisar...">
            <span class="input-group-btn">
              <button class="btn btn-warning">Buscar</button>
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

  <!-- POSTS -->
  <section id="clientes">
    <div class="container">
      <div class="row">
        <div class="col">
          <div class="card">
            <div class="card-header">
              <h4>Cliente</h4>
            </div>
             <div class="table table-responsive">
              <table id="tabela_cliente" class="table table-striped table-bordered" cellspacing="0" width="100%">
         <thead class="thead-inverse">
                  <tr>
                    <th>Nº</th>
                    <th>Nome</th>
                    <th>Email</th>
                    <th>Telefone</th>
                    <th>CEP</th>
                    <th>Endereço</th>
                    <th>Bairro</th>
                    <th>Cidade</th>
                    <th class="text-center">Editar</th>
                    <th class="text-center">Excluir</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                   <td scope="row">1</td>
                   <td>Oziel Ferreira</td>
                   <td>oziel@gmail.com</td>
                   <td>2121242124</td>
                   <td>24000000</td>
                   <td>Rua São João, Nº100</td>
                   <td>Centro</td>
                   <td>Niterói</td>
                    <td><a href="editar_cliente.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                    <td><a href="#" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                  </tr>
                <tr>
                  <td scope="row">2</td>
                  <td>Mauricio Junior</td>
                   <td>mauricio@gmail.com</td>
                   <td>2121242124</td>
                   <td>25000000</td>
                   <td>Rua São Pedro, Nº120</td>
                   <td>Centro</td>
                   <td>Niterói</td>
                  <td><a href="editar_cliente.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                  <td><a href="#" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                </tr>
                <tr>
                <td scope="row">3</td>
                  <td>Pedro Paulo</td>
                   <td>pedro@gmail.com</td>
                   <td>2121242124</td>
                   <td>26000000</td>
                   <td>Rua São Roberto, Nº110</td>
                   <td>Centro</td>
                   <td>Niterói</td>
                  <td><a href="editar_cliente.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                  <td><a href="#" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                </tr>
                <tr>
                <td scope="row">4</td>
                  <td>Pedro Paulo</td>
                   <td>pedro@gmail.com</td>
                   <td>2121242124</td>
                   <td>26000000</td>
                   <td>Rua São Roberto, Nº110</td>
                   <td>Centro</td>
                   <td>Niterói</td>
                  <td><a href="editar_cliente.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                  <td><a href="#" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                </tr>
                <tr>
                <td scope="row">5</td>
                  <td>Mauricio Junior</td>
                   <td>mauricio@gmail.com</td>
                   <td>2121242124</td>
                   <td>25000000</td>
                   <td>Rua São Pedro, Nº120</td>
                   <td>Centro</td>
                   <td>Niterói</td>
                  <td><a href="editar_cliente.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                  <td><a href="#" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                </tr>
                <tr>
                <td scope="row">6</td>
                  <td>Pedro Paulo</td>
                   <td>pedro@gmail.com</td>
                   <td>2121242124</td>
                   <td>26000000</td>
                   <td>Rua São Roberto, Nº110</td>
                   <td>Centro</td>
                   <td>Niterói</td>
                  <td><a href="editar_cliente.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                  <td><a href="#" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                </tr>
                <tr>
                <td scope="row">7</td>
                  <td>Oziel Ferreira</td>
                   <td>oziel@gmail.com</td>
                   <td>2121242124</td>
                   <td>24000000</td>
                   <td>Rua São João, Nº100</td>
                   <td>Centro</td>
                   <td>Niterói</td>
                  <td><a href="editar_cliente.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                  <td><a href="#" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                </tr>
                <tr>
                <td scope="row">8</td>
                  <td>Mauricio Junior</td>
                   <td>mauricio@gmail.com</td>
                   <td>2121242124</td>
                   <td>25000000</td>
                   <td>Rua São Pedro, Nº120</td>
                   <td>Centro</td>
                   <td>Niterói</td>
                  <td><a href="editar_cliente.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                  <td><a href="#" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                </tr>
                <tr>
                <td scope="row">9</td>
                  <td>Oziel Ferreira</td>
                   <td>oziel@gmail.com</td>
                   <td>2121242124</td>
                   <td>24000000</td>
                   <td>Rua São João, Nº100</td>
                   <td>Centro</td>
                   <td>Niterói</td>
                  <td><a href="editar_cliente.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                  <td><a href="#" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                </tr>
                <tr>
                <td scope="row">10</td>
                  <td>Mauricio Junior</td>
                   <td>mauricio@gmail.com</td>
                   <td>2121242124</td>
                   <td>25000000</td>
                   <td>Rua São Pedro, Nº120</td>
                   <td>Centro</td>
                   <td>Niterói</td>
                  <td><a href="editar_cliente.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
                  <td><a href="#" class="btn btn-danger"><i class="fa fa-trash"></i> Excluir</a></td>
                </tr>
                <tr>
                <td scope="row">11</td>
                  <td>Oziel Ferreira</td>
                   <td>oziel@gmail.com</td>
                   <td>2121242124</td>
                   <td>24000000</td>
                   <td>Rua São João, Nº100</td>
                   <td>Centro</td>
                   <td>Niterói</td>
                  <td><a href="editar_cliente.jsp" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i> Editar</a></td>
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

