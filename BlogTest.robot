*** Settings ***
Resource  ResourceBlogTest.robot
Test Setup  Acessar a página do blog
Test Teardown  Fechar Navegador

*** Test Cases ***
Caso de teste 01: Pesquisar um post
  Pesquisar um post contendo "Season Premiere: Introdução ao Robot Framework"
  Conferir mensagem de pesquisa "Mostrando postagens que correspondem à pesquisa por Season Premiere: Introdução ao Robot Framework"
  
Caso de teste 02: Ler um post
  Acessar o post "Season Premiere: Introdução ao Robot Framework" 
  Conferir se a imagem do robô é exibida
  Conferir no post se o texto "nesse post vou apresentar-lhes o astro deste blog:" é exibido
    
