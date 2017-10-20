<!DOCTYPE html>
<html lang="pt-br">
<head>
  <title>HidemiPhone</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">

  <!-- inserindo css do Font Awesome -->
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" media="all" />
  <link rel="stylesheet" href="css/estilo.css">
  <link rel="stylesheet" href="css/efeito-modal-imagem.css" />
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="js/efeito-mostrar-imagem.js"></script>

  <style>
  /*.img-produto img {
    max-width: 100%;
    -moz-transition: all 0.3s;
    -webkit-transition: all 0.3s;
    transition: all 0.3s;
    
  }
  .img-produto:hover img {
    -moz-transform: scale(1.1);
    transform: scale(1.05);
  }
*/

  .aparelho img{
    background: #E0FFFF;"
    border: 1px solid black;
}

 .custab {
      border: 0px solid #ccc;
      padding: 5px;
      margin: 5% 0;
      box-shadow: 3px 3px 2px #ccc;
      transition: 0.5s;
      text-align: left;
    }
    .custab:hover{
      box-shadow: 2px 2px 0px transparent;
      transition: 0.5s;
    }
    .thumbnail_prod{
      width: 300px;

    }
    .text-center.img-responsive{
      margin:0 auto;
      width: 80%;
    }

  </style>


<!-- <script> 
$(document).ready(function(){
    $("button").click(function(){
        //$("#cor").animate({
           // height: 'toggle'
           $("#cor").fadeToggle(2000);
        //});
       $("#cor").on("click", function(){
        $(this).fadeOut (2000).on('hide');
        
    });
        
    });
});
</script>  -->

<!-- OUTRA FORMA -->

<script type="text/javascript" >
    
    function limpa_formulário_cep() {
            //Limpa valores do formulário de cep.
            document.getElementById('rua').value=("");
            document.getElementById('bairro').value=("");
            document.getElementById('cidade').value=("");
            document.getElementById('uf').value=("");
            document.getElementById('ibge').value=("");
    }

    function meu_callback(conteudo) {
        if (!("erro" in conteudo)) {
            //Atualiza os campos com os valores.
            document.getElementById('rua').value=(conteudo.logradouro);
            document.getElementById('bairro').value=(conteudo.bairro);
            document.getElementById('cidade').value=(conteudo.localidade);
            document.getElementById('uf').value=(conteudo.uf);
            document.getElementById('ibge').value=(conteudo.ibge);
        } //end if.
        else {
            //CEP não Encontrado.
            limpa_formulário_cep();
            alert("CEP não encontrado.");
        }
    }
        
    function pesquisacep(valor) {

        //Nova variável "cep" somente com dígitos.
        var cep = valor.replace(/\D/g, '');

        //Verifica se campo cep possui valor informado.
        if (cep != "") {

            //Expressão regular para validar o CEP.
            var validacep = /^[0-9]{8}$/;

            //Valida o formato do CEP.
            if(validacep.test(cep)) {

                //Preenche os campos com "..." enquanto consulta webservice.
                document.getElementById('rua').value="...";
                document.getElementById('bairro').value="...";
                document.getElementById('cidade').value="...";
                document.getElementById('uf').value="...";
                document.getElementById('ibge').value="...";

                //Cria um elemento javascript.
                var script = document.createElement('script');

                //Sincroniza com o callback.
                cep.replace(".","");
                cep.replace("-","");
                script.src = '//viacep.com.br/ws/'+ cep + '/json/?callback=meu_callback';

                //Insere script no documento e carrega o conteúdo.
                document.body.appendChild(script);

            } //end if.
            else {
                //cep é inválido.
                limpa_formulário_cep();
                alert("Formato de CEP inválido.");
            }
        } //end if.
        else {
            //cep sem valor, limpa formulário.
            limpa_formulário_cep();
        }
    };

    </script>
<script type="text/javascript">
  var controle = 4;
  function mudaEstilo() {
    var objDiv = document.getElementById('myPage');

    if (controle == 0) {
      controle++;
      objDiv.style.color = "#000000";
      objDiv.style.background = "#FFFFFF";

    } else if (controle == 1) {controle++;
      objDiv.style.color = "#FFFFFF";
      objDiv.style.background = "#FE2E2E";

    }  else if (controle == 2) {controle++;
      objDiv.style.color = "#000000";
      objDiv.style.background = "#A9E2F3";

    } else if (controle == 3) {controle++;
      objDiv.style.color = "#FFFFFF";
      objDiv.style.background = "#848484";

    } else {controle = 0;
      objDiv.style.color = "#FF0000";
      objDiv.style.background = "#FFFFD4";

    }
  }
</script>

<!-- FIM DA OUTRA FORMA -->
<style type="text/css" media="screen">
@media (max-width: 320px) 
{
  body
  {
    width: 100% !important;
  }
}
</style>

</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

  <nav class="navbar navbar-default navbar-fixed-top">
    <input class="btn btn-outline btn-default btn-xs btn-block" type="button" onclick="mudaEstilo()" value="Alterar fonte e background">
    <!-- <button class="btn btn-outline btn-default btn-xs btn-block"> Escolha sua cor de preferÃªncia?</button> -->

    <!-- Top Navbar -->
    <div class="top_nav hidden-xs">
      <div class="container">
        <ul class="list-inline info">
          <li><a href="#"><span class="fa fa-phone"></span> 21 3619-7990</a></li>
          <li><a href="mailto:consertoapple@live.com"><span class="fa fa-envelope"></span> consertoapple@live.com</a></li>
          <li><a href="#"><span class="fa fa-clock-o"></span> Segunda/Sexta 9hs-18hs- Sábado 9hs-13hs</a></li>
        </ul>
        <ul class="list-inline social_icon">
          <li><a href="https://www.facebook.com/hidemiphone/" target="_blanck"><span class="fa fa-facebook" style="font-size: 14px;"></span></a></li>
          <li><a href="https://www.instagram.com/hidemiphone/" target="_blanck"><span class="fa fa-instagram" style="font-size: 14px;"></span></a></li>
          <li><a href="#" target="_blanck"><span class="fa fa-youtube" style="font-size: 14px;"></span></a></li>
          <li><a href="https://api.whatsapp.com/send?phone=5521999244944&text=Deixe%20uma%20%20mensagem%20com%20seu%20problema!%20Retornaremos%20o%20contato%20o%20mais%20rápido%20possível.%20Desde%20já%20agradecemos%20o%20contato!" target="_blank"><span class="fa fa-whatsapp" style="font-size: 14px;"></span></a></li>
        </ul>     
      </div>
    </div><!-- Top Navbar end -->

    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#myPage"><img class="img img-responsive" src="img/logo-projeto.png" alt="" style="width: 65%; margin-top:-14px;"></a>
      </div>
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav navbar-right text-center">
          <li><a href="#home">HOME</a></li>
          <li><a href="#servico">SERVIÇO</a></li>
          <li><a href="#produto">PRODUTO</a></li>
          <li><a href="#orcamento">ORÇAMENTO</a></li>
          <li><a href="#tabelaPreco">TABELA DE PREÇO</a></li>
          <li><a href="#contato">CONTATO</a></li>
        </ul>
      </div>
    </div>
  </nav>
  
    <script type="text/javascript">

   $(".nav li a").click(function() {
    $(".navbar-collapse").collapse('hide');

  });

</script>
  <!--  -->

<!--  MODAL MESSANGER-->
<div class="messenger">
 <div class="modal fade" id="myMenssager" role="dialog" style="z-index: 9999;margin-top: 76px;margin-left: 90px;">
   <div class="modal-dialog modal-sm">
    <iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fhidemiphone%2F&tabs=messages&width=340&height=500&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=false&appId" width="340" height="500" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe>
    <div class="container">
     <div id="fb-root"></div>
   </div>
 </div>
</div>
</div>

<div class="jumbotron text-center">
  <h1 style="margin-bottom: 10px;"><i class="fa fa-apple fa-5" aria-hidden="true" style="color: white;font-size: 60pt;"></i> Hid<b style="font-size: 72%;">EM</b><b style="color: red;">i</b>Phone</h1>
  <p>Somos especializados no conserto de iPhone e iPad</p>
  <button class="btn btn-outline btn-danger btn-md" style="color: white;"><a href="#orcamento" style="text-decoration: none; color: white;">Solicite seu Orçamento</a></button>
</div>

<!-- Container (Portfolio Sessão) -->
<div id="#" class="container-fluid text-center bg-grey">
  <h2>ATENDIMENTO PERSONALIZADO</h2><br>
  <h4>What we have created</h4>
  <div class="row text-center slideanim">
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="img/componentes-iphone.jpg" alt="Paris" width="320" height="300">
        <p><strong>Paris</strong></p>
        <p>Yes, we built Paris</p>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="img/tela-iphone-quebrada.jpg" alt="New York" width="320" height="300">
        <p><strong>New York</strong></p>
        <p>We built New York</p>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="img/tela-iphone.jpg" alt="San Francisco" width="320" height="300">
        <p><strong>San Francisco</strong></p>
        <p>Yes, San Fran is ours</p>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="img/componentes-iphone.jpg" alt="Paris" width="320" height="300">
        <p><strong>Paris</strong></p>
        <p>Yes, we built Paris</p>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="img/tela-iphone-quebrada.jpg" alt="New York" width="320" height="300">
        <p><strong>New York</strong></p>
        <p>We built New York</p>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="img/tela-iphone.jpg" alt="San Francisco" width="320" height="300">
        <p><strong>San Francisco</strong></p>
        <p>Yes, San Fran is ours</p>
      </div>
    </div>
  </div>
  <br>

  <h2>What our customers say</h2>
  <div id="myCarousel" class="carousel slide text-center" data-ride="carousel" data-interval="3500">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <h4>"This company is the best. I am so happy with the result!"<br><span style="font-style:normal;">Michael Roe, Vice President, Comment Box</span></h4>
      </div>
      <div class="item">
        <h4>"One word... WOW!!"<br><span style="font-style:normal;">John Doe, Salesman, Rep Inc</span></h4>
      </div>
      <div class="item">
        <h4>"Could I... BE any more happy with this company?"<br><span style="font-style:normal;">Chandler Bing, Actor, FriendsAlot</span></h4>
      </div>
      <div class="item">
        <h4>"Field... BE Happy with this company?"<br><span style="font-style:normal;">Bing, Actor, FriendsAlot</span></h4>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>


<!-- Container (Home sessão) -->
<div id="home" class="container-fluid">
  <div class="row">
    <div class="col-sm-8">
      <h2>Sobre a página da empresa</h2><br>
      <h4>A HidemiPhone a 6 anos busca atender a todos os clientes da maneira mais clara e objetiva possível.</h4><br>
      <p>Serviços de Manutenção e Reparos que seu iPhone precisava você encontra na HidEMiPhone, serviços com 90 dias de Garantia e atendimento personalizado para esclarecer todas as dúvidas referentes ao iPhone/iPad. Aqui cuidamos do seu iPhone.</p>
      <br><button class="btn btn-default btn-lg">Get in Touch</button>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-signal logo"></span>
    </div>
  </div>
</div>

<div class="container-fluid bg-grey">
  <div class="row">
    <div class="col-sm-4">
      <img src="img/mao-segurando-iphone.png" alt="" width="320" height="400" class="logo slideanim">
    </div>
    <div class="col-sm-8">
      <h2>Our Values</h2><br>
      <h4><strong>MISSION:</strong> Our mission lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</h4><br>
      <p><strong>VISION:</strong> Our vision Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
      Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
  </div>
</div>

<!-- Container (Serviço sessão) -->
<div id="servico" class="container-fluid text-center">
  <h2>SERVIÇO RÁPIDO</h2>
  <h4>What we offer</h4>
  <br>
  <div class="row slideanim">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-off logo-small" style="color: black;"></span>
      <h4>MANUTENÇÃ‡O</h4>
      <p>Lorem ipsum dolor sit amet..</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-heart logo-small" style="color: red;"></span>
      <h4>ESTIMAÇÃO</h4>
      <p>Lorem ipsum dolor sit amet..</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-lock logo-small" style="color: black;"></span>
      <h4>TRABALHO</h4>
      <p>Lorem ipsum dolor sit amet..</p>
    </div>
  </div>
  <br><br>
  <div class="row slideanim">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-leaf logo-small" style="color: green;"></span>
      <h4>MEIO AMBIENTE</h4>
      <p>Lorem ipsum dolor sit amet..</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-certificate logo-small" style="color: blue;"></span>
      <h4>CERTIFICADO</h4>
      <p>Lorem ipsum dolor sit amet..</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-wrench logo-small" style="color: black;"></span>
      <h4 style="color:#303030;">HARD WORK</h4>
      <p>Lorem ipsum dolor sit amet..</p>
    </div>
  </div>
</div>

<!-- Container (Produto sessão) -->
<div id="produto" class="container-fluid text-center bg-grey">
  <div class="text-center">
    <h2>PRODUTOS</h2>
    <h4>Vendas de aparelhos e acessórios</h4>
    <hr>
  </div>
  <div class="row slideanim">
    <div class="col-md-4">
      <div class="panel panel-default text-center img-produto">
        <!-- NOME DO RPODUTO -->
        <div class="panel-heading" style="background:black !important;">
          <h3>iPhone 4/4S</h3>
        </div>
        <!-- IMAGEM DO PRODUTO -->
        <img src="img/iphone-4s-preto.jpg" class="img-responsive" alt="a" style="width:100%;"/>
        <!-- DESCRIÃ‡ÃƒO DO PRODUTO -->
        <div class="panel-body">
          <p>Troca do Vidro</p>
          <p>Touch</p>
          <p>Display iPhone</p>
        </div>
        <!-- PREÃ‡O DO PRODUTO -->
        <div class="panel-footer">
          <h3>R$ 180,00</h3>
          <h4>Garantia 90 dias</h4>
          <button class="btn btn-danger btn-block">Consulte outros Serviços</button>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Container (Pricing Section) -->
<div id="orcamento" class="container">
  <div class="text-center">
    <h2>ORÇAMENTO</h2>
    <h4>Estamos aguardando seu orçamento!</h4>
  </div>
  <div class="row">
${message }

    <form id="orcamCliente" name="formorc" method="POST" action="orcamento" data-toggle="validator" role="form" enctype="multipart/form-data">
      <div class="col-sm-6 col-sm-offset">
        <h2 style="margin-bottom:10px;" class="text-center"><i class="glyphicon glyphicon-log-in"></i> Dados do Cliente</h2>
        <hr>
        <div class="form-group">
         <label>Nome Completo</label>
         <input type="text" name="nome" class="form-control" placeholder="Digite seu nome..." required="required" data-error="* Por favor, informe seu nome completo.">  
         <div class="help-block with-errors"></div>
       </div>
       <div class="form-group">
         <label>Email</label>
         <input type="email" name="email" size="40" class="form-control" placeholder="Digite seu email..." required="required" data-error="* Por favor, informe seu email.">  
         <div class="help-block with-errors"></div>
       </div>
       <div class="form-group">
         <label>Telefone</label>
         <input type="text" name="telefone" size="40" class="form-control" placeholder="Digite seu Telefone..." required="required" data-error="* Por favor, informe seu telefone.">
         <div class="help-block with-errors"></div>
       </div>
       <div class="form-group">
         <label>CEP</label>
         <input type="text" name="cep" onblur="pesquisacep(this.value)" size="40" class="form-control" placeholder="Digite seu CEP..." required="required" data-error="* Por favor, informe um CEP válido.">  
         <div class="help-block with-errors"></div>
       </div>
       <div class="form-group">
         <label>Endereço</label>
         <input type="text" name="rua" id="rua" size="40" class="form-control" placeholder="Exemplo: Rua Almirante Teffé" required="required" data-error="* Por favor, informe seu endereço.">  
         <div class="help-block with-errors"></div>
       </div>
        <div class="form-group">
         <label>Numero</label>
         <input type="text" name="num" id="num" size="5" class="form-control" placeholder="Exemplo: 657" required="required" data-error="* Por favor, informe o numero da sua Ruo.">  
         <div class="help-block with-errors"></div>
         <script>
         
         $(function(){
  			$("#num").focus(function(){

  				if($("#num").val() == ""){
  					$("#num").val("Nº ");
  				}else if($("#num").val() != "Nº "){
  					//$("#num").val("teste");
  				}
  			}
  				);      	
  			
  			$("#num").focusout(function(){
  				if($("#num").val()== "Nº ")
  				$("#num").val("");
  			}
  				); 
        
         });

         </script>
       </div>
       <div class="form-group">
        <label>Bairro</label>
        <input type="text" name="bairro" id="bairro" size="40" class="form-control" placeholder="Digite seu Bairro..." required="required" data-error="* Por favor, informe seu Bairro.">  
        <div class="help-block with-errors"></div>
      </div>
      <div class="form-group">
        <label>Cidade</label>
        <input type="text" name="cidade" id="cidade" size="40" class="form-control" placeholder="Digite sua Cidade..." required="required" data-error="* Por favor, informe sua Cidade.">  
        <div class="help-block with-errors"></div>
      </div>

      <div class="">
        <hr>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h3 class="panel-title text-center">Enviar imagem do aparelho.</h3>
          </div>
          <div class="panel-body">
            <ul>
              <li>Caso não consiga informar o modelo do aparelho.</li>
              <li>Envie 3 imagens do aparelho da frente, verso e lateral para agilizar o atendimento.</li>
              <li>Somente arquivos de imagem (<strong>JPG, PNG</strong>) serão permitidos.</li> 
            </ul>
            <div class="col-md-6">
              <a href="#" class="btn btn-warning btn-block" data-toggle="modal" data-target="#addImagemModal" style="background-color: #630000 !important;"><i class="fa fa-plus"></i> Adicionar Imagem</a>
              <!-- MODAL IMAGENS -->
        <div class="modal fade" id="addImagemModal" style="margin-top: 86px;">
          <div class="modal-dialog modal-lg">
            <div class="modal-content" style="background-color:rgba(0, 0, 0, 0.91);">
              <div class="modal-header bg-warning text-white">
                <h2 class="modal-title text-center titulo" id="addImagemModalLabel">Adicionar Imagem</h2>
                <button class="close" data-dismiss="modal" id="modalImagem">
                  <span>&times;</span>
                </button>
              </div>

                <div class="modal-body" style="padding:2px; ">
                  <div class="col-md-10" style="margin-top: 20px;">
                    <div class="form-group">
                      <div class="main-img-preview">
                        <img class="thumbnail img-visualizar-1" src="img/iphone-parte-frente.jpg" title="iPhone de Frente">
                      </div>
                      <div class="input-group">
                        <div class="input-group-btn">
                          <div class="fileUpload btn btn-danger fake-shadow">
                            <span><i class="glyphicon glyphicon-upload"></i> Upload da imagem</span>
                            <input id="frente" name="frente" type="file" class="anexo_upload-1">
                          </div>
                        </div>
                        <input id="fakeUploadImagem-1" class="form-control fake-shadow" placeholder="Imagem do Frente" disabled="disabled">
                      </div>
                      <p class="help-block">* Imagem da frente do iPhone</p>
                    </div>

                    <div class="form-group">
                      <div class="main-img-preview">
                        <img class="thumbnail img-visualizar-2" src="img/iphone-parte-traz.jpg" title="iPhone a parte de traz">
                      </div>
                      <div class="input-group">
                        <div class="input-group-btn">
                          <div class="fileUpload btn btn-danger fake-shadow">
                            <span><i class="glyphicon glyphicon-upload"></i> Upload da imagem</span>
                            <input id="verso" name="verso" type="file" class="anexo_upload-2">
                          </div>
                        </div>
                        <input id="fakeUploadImagem-2" class="form-control fake-shadow" placeholder="Imagem do Verso" disabled="disabled">
                      </div>
                      <p class="help-block">* Imagem de trás do iPhone</p>
                    </div>

                    <div class="form-group">
                      <div class="main-img-preview">
                        <img class="thumbnail img-visualizar-3" src="img/iphone-lateral.jpg" title="iPhone de lateral">
                      </div>
                      <div class="input-group">
                        <div class="input-group-btn">
                          <div class="fileUpload btn btn-danger fake-shadow">
                            <span><i class="glyphicon glyphicon-upload"></i> Upload da imagem</span>
                            <input id="lateral" name="lateral" type="file" class="anexo_upload-3">
                          </div>
                        </div>
                        <input id="fakeUploadImagem-3" class="form-control fake-shadow" placeholder="Imagem do Lateral" disabled="disabled">
                      </div>
                      <p class="help-block">* Imagem da lateral do iPhone</p>
                    </div>
                  </div>
                </div>
              
              <div class="modal-footer">
                <button class="btn btn-secondary" data-dismiss="modal">Voltar</button>
              </div>
            </div>
          </div>
        </div>
              
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="col-sm-6">
      <h2 style="margin-bottom:10px;" class="text-center"><i class="glyphicon glyphicon-log-in"></i> Dados do Aparelho</h2>
      <hr>
      <div class="form-group">
       <label data-toggle="popover" data-trigger="hover" data-content="Envie uma Mensagem" data-placement="right" title="Digite *#06# para obter IMEI do aparelho.">Número de IMEI</label>
       <input type="text" name="serie" size="50" class="form-control" placeholder="Digite o numero do IMEI..." required="required" data-error="Por favor, informe o IMEI do aparelho.">  
       <div class="help-block with-errors"></div>
     </div>
     <div class="form-group">
      <label>Equipamento</label>
      <select name="equipamento" class="form-control" required="required" data-error="Por favor, informe qual equipamento.">
        <option value="">Selecione o tipo de aparelho</option>  
        <option value="iPhone">iPhone</option>
        <option value="iPad">iPad</option>
      </select>
      <div class="help-block with-errors"></div>
    </div>
    <div class="form-group">
      <label>Modelo</label>
      <select name="modelo" class="form-control" required="required" data-error="Por favor, informe o modelo do aparelho.">
        <option value="">Selecione o modelo do aparelho</option>  
        <option value="iPhone 4">iPhone 4</option>
        <option value="iPhone 4S">iPhone 4S</option>
        <option value="iPhone 5">iPhone 5</option>
        <option value="iPhone 5C">iPhone 5C</option>
        <option value="iPhone 5S">iPhone 5S</option>
        <option value="iPhone 6">iPhone 6</option>
        <option value="iPhone 6 Plus">iPhone 6 Plus</option>
        <option value="iPhone 6S">iPhone 6S</option>
        <option value="iPhone 6S Plus">iPhone 6S Plus</option>
        <option value="iPhone SE">iPhone SE</option>
        <option value="iPhone 7">iPhone 7</option>
        <option value="iPhone 7 Plus">iPhone 7 Plus</option>
        <option value="iPhone 8">iPhone 8</option>
        <option value="iPhone 8 Plus">iPhone 8 Plus</option>
        <option value="iPad 2">iPad 2</option>
        <option value="iPad 3">iPad 3</option>
        <option value="iPad 4">iPad 4</option>
        <option value="iPad Air">iPad Air</option>
        <option value="iPad Air 2">iPad Air 2</option>
        <option value="iPad Mini">iPad Mini</option>
        <option value="iPad Mini 2">iPad Mini 2</option>
        <option value="iPad Mini 3">iPad Mini 3</option>
        <option value="iPad Mini 4">iPad Mini 4</option>
        <option value="iPad Pro">iPad Pro</option>
      </select>
      <div class="help-block with-errors"></div>
    </div>
    <hr class="no_line">
    <div class="form-group">
      <label>Origem</label>
      <select name="origem" class="form-control" required="required" data-error="Por favor, informe a origem do aparelho.">
        <option value="">Selecione o País de origem do aparelho</option>
        <option value="Nacional">Nacional</option>
        <option value="Importado">Importado</option>
      </select>
      <div class="help-block with-errors"></div>
    </div>
    <div class="form-group">
      <label>Cor da Tela</label>
      <select name="cor" class="form-control" required="required" data-error="Por favor, informe a cor do aparelho.">
        <option value="">Selecione a cor do aparelho</option> 
        <option value="Preto">Preto</option>
        <option value="Branco">Branco</option>
      </select>
      <div class="help-block with-errors"></div>
    </div>
    <div class="form-group">
      <label>Selecione o problema do aparelho:</label>
      <select name="problema" class="form-control" required="required" data-error="Por favor, informe o problema do aparelho.">  
        <option value="">Selecione o problema do aparelho</option>
        <option value="Tela quebrada, apagada, manchada ou sensor de toque">Tela quebrada, apagada, manchada ou sensor de toque</option>
        <option value="Bateria dura pouco tempo">Bateria dura pouco tempo</option>
        <option value="Celular nao liga">Celular não liga</option>
        <option value="Celular molhou">Celular molhou</option>
        <option value="Celular nao carrega">Celular não carrega</option>
        <option value="Botao de Volume">Botão de Volume</option>
        <option value="Botao home nao funciona">Botão home não funciona</option>
        <option value="Alto falante (da orelha) nao funciona direito">Alto falante (da orelha) não funciona direito</option>
        <option value="Problema na camera dianteira">Problema na câmera dianteira</option>
        <option value="Problema na camera traseira">Problema na câmera traseira</option>
        <option value="Microfone">Microfone</option>
        <option value="Alto falante (viva voz)">Alto falante (viva voz)</option>
        <option value="Celular não vibra">Celular não vibra</option>
        <option value="Outros">Outros</option>
      </select>
      <div class="help-block with-errors"></div>
    </div>
    <hr style="margin-bottom: 20px;">
    <div class="form-group">
      <label>Descrição do problema apresentado</label>
      <textarea name="descricao" rows="6" maxlength="1000" placeholder="Descreva o defeito, máximo de 1000 caracteres" class="form-control" style="resize: none;" required="required" data-error="* Por favor, deixe-nos uma mensagem."></textarea>
      <div class="help-block with-errors"></div>
    </div>
    <div class="form-group">
      <input type="submit" class="btn btn-outline btn-danger btn-block btn-send" 
      name="enviarOrcam" value="Enviar Orçamento" onclick="validarOrcamento();" style="color: white;"/>
    </div>
  </div>

</form>
</div>

<hr>
</div>

<!-- Container (Preço Sessão) -->
<div id="tabelaPreco" class="container-fluid bg-grey">
  <div class="text-center">
    <h2>TABELA DE PREÇOS</h2>
    <h4>iPhone</h4>
    <hr>
  </div>
  <div class="row slideanim">
     <div class="col-sm-4">
      <h4 class="text-center">iPhone 4/ 4S</h4>
      <hr>
      <img class="text-center img img-responsive" src="https://iphonerestore.com.br/wp-content/uploads/2017/07/iphone4s.png">

      <table class="table table-striped custab">

        <thead>
          <tr>

            <th>Serviço</th>
            <th>Preço</th>
            
          </tr>
        </thead>
        <tbody> 

          <tr>
            <td>Troca de Tela:</td>
            <td>R$200,00</td>


          </tr>
          <tr>
            <td>Troca de tela e bateria:</td>
            <td>R$300,00</td>


          </tr>
          <tr>
            <td>Troca do Conector de carga:</td>
            <td>R$150,00</td>


          </tr>
        </tbody>  
        <div class="panel-footer" id="painelP">
          <a href="#" class="btn btn-default btn-block btnServ">Consulte outros Serviços</a>
        </div>
      </table>

    </div>
    
    <div class="col-sm-4">
      <h4 class="text-center">iPhone 4/ 4S</h4>
      <hr>
      <img class="text-center img img-responsive" src="https://iphonerestore.com.br/wp-content/uploads/2017/07/iphone4s.png">
      
      <table class="table table-striped custab">
       
        <thead>
          <tr>

            <th>Serviço</th>
            <th>Preço</th>
            
          </tr>
        </thead>
        <tbody> 
         
          <tr>
            <td>Troca de Tela:</td>
            <td>R$200,00</td>

            
          </tr>
          <tr>
            <td>Troca de tela e bateria:</td>
            <td>R$300,00</td>

            
          </tr>
          <tr>
            <td>Troca do Conector de carga:</td>
            <td>R$150,00</td>

            
          </tr>
        </tbody>  
        <div class="panel-footer" id="painelP">
          <a href="#" class="btn btn-default btn-block btnServ">Consulte outros Serviços</a>
        </div>
      </table>
      
    </div>
    <div class="col-sm-4">
      <h4 class="text-center">iPhone 4/ 4S</h4>
      <hr>
      <img class="text-center img img-responsive" src="https://iphonerestore.com.br/wp-content/uploads/2017/07/iphone4s.png">
      
      <table class="table table-striped custab">
       
        <thead>
          <tr>

            <th>Serviço</th>
            <th>Preço</th>
            
          </tr>
        </thead>
        <tbody> 
         
          <tr>
            <td>Troca de Tela:</td>
            <td>R$200,00</td>

            
          </tr>
          <tr>
            <td>Troca de tela e bateria:</td>
            <td>R$300,00</td>

            
          </tr>
          <tr>
            <td>Troca do Conector de carga:</td>
            <td>R$150,00</td>

            
          </tr>
        </tbody>  
        <div class="panel-footer" id="painelP">
          <a href="#" class="btn btn-default btn-block btnServ">Consulte outros Serviços</a>
        </div>
      </table>
      
    </div>
    <div class="col-sm-4">
      <h4 class="text-center">iPhone 4/ 4S</h4>
      <hr>
      <img class="text-center img img-responsive" src="https://iphonerestore.com.br/wp-content/uploads/2017/07/iphone4s.png">
      
      <table class="table table-striped custab">
       
        <thead>
          <tr>

            <th>Serviço</th>
            <th>Preço</th>
            
          </tr>
        </thead>
        <tbody> 
         
          <tr>
            <td>Troca de Tela:</td>
            <td>R$200,00</td>

            
          </tr>
          <tr>
            <td>Troca de tela e bateria:</td>
            <td>R$300,00</td>

            
          </tr>
          <tr>
            <td>Troca do Conector de carga:</td>
            <td>R$150,00</td>

            
          </tr>
        </tbody>  
        <div class="panel-footer" id="painelP">
          <a href="#" class="btn btn-default btn-block btnServ">Consulte outros Serviços</a>
        </div>
      </table>
      
    </div>
    
    <div class="col-sm-4">
      <h4 class="text-center">iPhone 4/ 4S</h4>
      <hr>
      <img class="text-center img img-responsive" src="https://iphonerestore.com.br/wp-content/uploads/2017/07/iphone4s.png">
      
      <table class="table table-striped custab">
       
        <thead>
          <tr>

            <th>Serviço</th>
            <th>Preço</th>
            
          </tr>
        </thead>
        <tbody> 
         
          <tr>
            <td>Troca de Tela:</td>
            <td>R$200,00</td>

            
          </tr>
          <tr>
            <td>Troca de tela e bateria:</td>
            <td>R$300,00</td>

            
          </tr>
          <tr>
            <td>Troca do Conector de carga:</td>
            <td>R$150,00</td>

            
          </tr>
        </tbody>  
        <div class="panel-footer" id="painelP">
          <a href="#" class="btn btn-default btn-block btnServ">Consulte outros Serviços</a>
        </div>
      </table>
      
    </div>
    <div class="col-sm-4">
      <h4 class="text-center">iPhone 4/ 4S</h4>
      <hr>
      <img class="text-center img img-responsive" src="https://iphonerestore.com.br/wp-content/uploads/2017/07/iphone4s.png">
      
      <table class="table table-striped custab">
       
        <thead>
          <tr>

            <th>Serviço</th>
            <th>Preço</th>
            
          </tr>
        </thead>
        <tbody> 
         
          <tr>
            <td>Troca de Tela:</td>
            <td>R$200,00</td>

            
          </tr>
          <tr>
            <td>Troca de tela e bateria:</td>
            <td>R$300,00</td>

            
          </tr>
          <tr>
            <td>Troca do Conector de carga:</td>
            <td>R$150,00</td>

            
          </tr>
        </tbody>  
        <div class="panel-footer" id="painelP">
          <a href="#" class="btn btn-default btn-block btnServ">Consulte outros Serviços</a>
        </div>
      </table>
      
    </div>


  </div>
</div>

<!-- Container (Contato sessão) -->
<div id="contato" class="container-fluid">
  <h2 class="text-center">CONTATO</h2>
  <h4 class="text-center">Entre em contato conosco e retornaremos o mais breve possível.</h4>
  <div class="row">
    <div class="col-sm-5">
      <div class="panel-heading">
        <h4 class="panel-title text-center titulo">
          <span class="glyphicon glyphicon-map-marker"></span> ENDEREÇO
        </h4>
      </div>
      <div class="panel panel-primary" style="background: rgba(0,0,0,0.10); border-radius:4px; height: 468px;">

        <div class="panel-body text-left">
          <p><span class="glyphicon glyphicon-map-marker logo-map"></span><a href="https://www.google.com.br/maps/dir/''/hidemiiphone/@-22.8966891,-43.1228013,20.08z/data=!4m8!4m7!1m0!1m5!1m1!1s0x9983db4775a5e9:0xa28d39fd436fddd9!2m2!1d-43.1225676!2d-22.8967325" target="_blanck"> Rua Almirante Teffé 657, Loja 28</a></p>
          <p><span class="glyphicon glyphicon-ok logo-map"></span> Shopping de Informática - INFO NITERÓI</p>
          <p><span class="glyphicon glyphicon-ok logo-map"></span>  Niterói, Centro</p>
          <p><span class="glyphicon glyphicon-phone logo-map"></span>  21 3619-7990</p>
          <p><span class="glyphicon glyphicon-envelope logo-map"></span> <a href="mailto:consertoapple@live.com"> consertoapple@live.com</a></p>
      <!--    <a  href="https://api.whatsapp.com/send?phone=5521999244944&text=Deixe%20uma%20%20mensagem%20com%20seu%20problema!%20Retornaremos%20o%20contato%20o%20mais%20rápido%20possível.%20Desde%20já%20agradecemos%20o%20contato!" target="_blank"><img src="img/whatsapp-ios-7-icon.png" class="img-responsive" alt="whatsapp" style="width:25px;height: 25px;"/></a>
          <a href="https://goo.gl/4UoCFJ" title="whatsapp" target="_blank"  style="float: left; margin-top: -25px; margin-left:27px;font-size: 11pt;text-decoration: none;color: black;">Enviar Mensagem Whatsapp</a>  --> 

        </div>

      </div>

    </div>
 
    <!-- <div class="col-sm-5">
      
      <p><span class="glyphicon glyphicon-map-marker"></span> Niterói, Centro</p>
      <p><span class="glyphicon glyphicon-phone"></span> 21 3619-7990</p>
      <p><span class="glyphicon glyphicon-envelope"></span> consertoapple@live.com</p>
    </div> -->

    <form id="faleConosco" name="formcad" method="POST" action="" data-toggle="validator" role="form">

      <div class="col-sm-7">
        <div class="panel-heading">

          <h4 class="panel-title text-center titulo">
            <span class="glyphicon glyphicon-log-in"></span>&nbsp; FALE CONOSCO
          </h4>

        </div>
        <div class="panel panel-primary" style="background: rgba(0,0,0,0.10); border-radius:4px;">

          <div class="panel-body text-left">
            <div class="form-group">
              <label>Nome *</label> 
              <input type="text" name="nome" class="form-control" placeholder="Digite seu Nome..." size="40" required="required" data-error="* Por favor, informe seu nome completo.">  
              <div class="help-block with-errors"></div>
            </div>
            <div class="form-group">
              <label>Email *</label> 
              <input type="email" name="email" class="form-control"
              placeholder="Digite seu email..." size="40" required="required" data-error="Por favor, informe um e-mail válido.">  
              <div class="help-block with-errors"></div>
            </div>
            <div class="form-group">
              <label>Telefone</label>
              <input type="text" name="tel" value="" size="40" class="form-control" placeholder="Digite seu Telefone..." required="required" data-error="* Por favor, informe seu telefone.">
              <div class="help-block with-errors"></div>
            </div>
            <div class="form-group">
              <label>Mensagem</label>
              <textarea name="mensagem" cols="30" rows="5" maxlength="1000" placeholder="Digite sua mensagem, máximo de 1000 caracteres" class="form-control" style="resize: none;" required="required" data-error="* Por favor, deixe-nos uma mensagem."></textarea>
              <div class="help-block with-errors"></div>
            </div>
            <hr style="color: white;">
            <input class="btn btn-outline btn-danger btn-block btn-send" type="submit"
            name="enviarContato" value="Enviar" onclick="validarContato();"  style="color: white;"/>

          </div>
          <!-- ${msg } -->
          <p class="text-center text-danger" id="v" style="color:red;font-size: 10pt;"></p>
        </div>
      </div>
    </form>
  </div>
</div>
<div class="panel-heading">
  <h3 class="panel-title text-center titulo" style="color:white;font-size: 145%;">
    <span class="glyphicon glyphicon-map-marker"></span> ONDE ESTAMOS!
  </h3>
</div>
<div class="googleMaps" style="margin-bottom: -8px;">
  <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d229.71568970579722!2d-43.12256300000001!3d-22.896729!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xa28d39fd436fddd9!2zSGlkZW1pUGhvbmUg76O_!5e0!3m2!1spt-BR!2sus!4v1506691022041" width="100%" height="400" frameborder="0" style="border:0" allowfullscreen></iframe>
</div>

<!-- ABRIR MENSSAGER NO MODAL-->
<script>

  <script>(function(d, s, id) {
   var js, fjs = d.getElementsByTagName(s)[0];
   if (d.getElementById(id)) return;
   js = d.createElement(s); js.id = id;
   js.src = "//connect.facebook.net/pt_BR/sdk.js#xfbml=1&version=v2.10";
   fjs.parentNode.insertBefore(js, fjs);
 }(document, 'script', 'facebook-jssdk'))
      <div class="fb-page" data-href="https://www.facebook.com/hidemiphone/" data-tabs="messages" data-width="350" data-height="500" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="false">
      <blockquote cite="https://www.facebook.com/hidemiphone/" class="fb-xfbml-parse-ignore">
      <a href="https://www.facebook.com/hidemiphone/">Conserto de iPhones e iPads</a>
      </blockquote>
      </div>
    </script>
    <!-- FIM MENSSAGER NO MODAL-->

    <!-- MENSAGEM DO ICONE -->
    <div id="titulo_fixo">
      <h4 style="color: red;"></h4>
    </div>
    <!-- ICONES REDES SOCIAIS -->
    <div>
      <a class="btn btn-link btn-xs" id="botao_fixo" data-placement="left" data-toggle="popover" data-trigger="hover" data-content="Envie uma Mensagem">
        <img src="img/icone-compartilhar-preto.png" width="50" height="50" position="fixed" float="right" class="img-circle" style="border-radius: 50%;"></a>
      </div>
      <div id="redes_sociais" class="Rsocial text-center" position="fixed" style="height:170px;width:40px;display:none;bottom:60px;float: right; margin-right: 10px;">
        <br>
        <a href="https://www.instagram.com/hidemiphone/" target="_blanck">
          <img src="img/icone-instagram.png" class="img-responsive" alt="instagram" alt="" onclick="instagram()" float="left" style="width: 40px;">
        </a>
        <a href="https://api.whatsapp.com/send?phone=5521999244944&text=Deixe%20uma%20%20mensagem%20com%20seu%20problema!%20Retornaremos%20o%20contato%20o%20mais%20rápido%20possível.%20Desde%20já%20agradecemos%20o%20contato!" target="_blanck">
          <img src="img/icone-whatsapp-iphone.png" class="img-resnposive" alt="whatsapp" alt="" onclick="whatsapp()" float="left" style="width: 40px;">
        </a>
        <a href="#" data-toggle="modal" data-target="#myMenssager" target="_blanck"><img src="img/icone-facebook-messenger.png" class="img-responsive" alt="menssager" alt="" onclick="menssager()" float="left" style="width: 40px;">
        </a>
      </div>
      <!-- TESTE PAGINA FACEBOOK NO SITE-->
      <div class="container-fluid" id="facebook">
        <div class="col-md-6">
          <div class="">
            <center>
              <iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FHidemiPhone%2F&tabs&width=450&height=220&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId" width="100%" height="220" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true">
              </iframe>
            </center>
          </div>
        </div>
        <div class="col-md-6">

          <!-- Load Facebook SDK for JavaScript -->

          <div id="fb-root"></div>
          <script>(function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1";
            fjs.parentNode.insertBefore(js, fjs);
          }(document, 'script', 'facebook-jssdk'));
        </script>

        <!-- Your like button code -->
        <div class="fb-like" 
        data-href="http://www.facebook.com/hidemiphone" 
        data-layout="standard" 
        data-action="like" 
        data-show-faces="true">
      </div>

      <iframe src="https://www.facebook.com/plugins/like.php?href=https://www.facebook.com/HidemiPhone" width="100%" height="40" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe>

      <div class="fb-like" data-href="https://www.facebook.com/hidemiphone" data-layout="standard" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>

      <div id="fb-root"></div>
      <script>(function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/pt_BR/sdk.js#xfbml=1&version=v2.10";
        fjs.parentNode.insertBefore(js, fjs);
      }(document, 'script', 'facebook-jssdk'));</script>


      <div class="fb-comment-embed" data-href="https://www.facebook.com/hidemiphone/posts/10102577175875681?comment_id=1193531464007751&amp;reply_comment_id=654912701278942" data-width="100%" data-include-parent="true"></div>


      <iframe src="https://www.facebook.com/plugins/comment_embed.php?href=https%3A%2F%2Fwww.facebook.com%2FHidemiPhone%2Fposts%2F10102577175875681%3Fcomment_id%3D1193531464007751%26reply_comment_id%3D654912701278942&width=500&include_parent=true&height=255&appId" width="100%" height="255" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe>

      
    </div>
  </div>


  <footer id="rodape" class="container-fluid text-center">
    <a href="#myPage" title="To Top">
      <span class="glyphicon glyphicon-chevron-up"></span>
    </a>
    <p><a href="https://www.hidemiphone.com.br" target="_blank" title="HidEMiPhone">&copy; 2017 Todos direitos reservados </a>| Designed by Turma 2016.3</p>
  </footer>

  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
  <script src="js/efeito-pagina.js"></script>
  
  <script src="js/contato.js"></script>
  <script src="js/orcamento.js"></script>
  <script src="js/validator.js"></script>

</body>
</html>





