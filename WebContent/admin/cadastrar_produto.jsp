 <jsp:include page="header.jsp"></jsp:include>
  <header id="main-header" class="py-2 bg-primary text-white">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <h2>Cadastrar Produto</h2>
        </div>
      </div>
    </div>
  </header>

  <!-- ACTIONS -->
  <section id="actions" class="py-4 mb-4 bg-faded">
    <div class="container">
      <div class="row">
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

  <!-- EDITAR PRODUTOS -->
  <section id="cadastrar_produto">
    <div class="container">
      <div class="row">
        <div class="col">
          <div class="card">
            <div class="card-header">
              <h4>Cadastrar Produto</h4>
            </div>
            <div class="card-block">
              <form action="${url }" method="POST" role="form" enctype="multipart/form-data">
                
            <div class="form-group">
              <div class="main-img-preview">
                <img class="thumbnail img-mostrar-2" src="http://dummyimage.com/800x600/4d494d/686a82.jpg&text=imagem+produto" title="Imagem Produto">
            </div>
            <hr>
            <div class="input-group">
                <div class="input-group-btn">
                  <div class="fileUpload btn btn-danger fake-shadow">
                    <span><i class="glyphicon glyphicon-upload"></i> Upload de imagem</span>
                    <input id="imagem_produto" name="imagem_produto" type="file" class="upload-1">
                </div>
            </div>
            <input id="fakeUpImagem-1" class="form-control fake-shadow" placeholder="Imagem do produto" disabled="disabled">
        </div>
        <small id="fileHelp" class="form-text text-muted">
                    <p class="help-block">* Imagem da produto<br> Tamanho M�ximo 3MB</p>
                  </small>
    	</div>
        
                <div class="form-group">
                  <label for="title" class="form-control-label">Nome</label>
                  <input type="text" name="nome" class="form-control" value="" placeholder="Nome do produto...">
                </div>
                <div class="form-group">
                  <label for="descricao">Descri��o</label>
                  <textarea name="descricao" class="form-control" rows="4" maxlength="500" style="resize: none;" value="" placeholder="Descri��o do produto..."></textarea>
                </div>
                <div class="form-group">
                  <label for="title" class="form-control-label">Pre�o</label>
                  <input type="text" name="preco" class="form-control" value="" placeholder="Pre�o do produto...">
                </div>
                <div class="form-group">
                   <button type="submit" class="btn btn-success btn-md"><i class="fa fa-cog"></i> 
          Cadastrar</button>
          			<button type="reset" class="btn btn-danger btn-md"><i class="fa fa-eraser"></i> 
          Limpar</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

<jsp:include page="footer.jsp"></jsp:include>