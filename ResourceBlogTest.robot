*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}               http://robotizandotestes.blogspot.com/
${BROWSER}           chrome
${BTN_PESQUISAR}     css=button.search-expand.touch-icon-button
${INPUT_PESQUISAR}   name=q
${SUBMIT_PESQUISAR}  css=input.search-action.flat-button
${LINK_POST}         xpath=//a[contains(text(),'Season Premiere: Introdução ao Robot Framework')]
${IMG_ROBO}          xpath=//img[contains(@src, 'if_Robot_18_385830_grande')]
${TEXTO_DESEJADO}        xpath=//span[text()=]

*** Keywords ***
Acessar a página do blog
  Open Browser  url=${URL}  browser=${BROWSER}
  Title Should Be  Robotizando Testes 

Pesquisar um post contendo "${TEXTO_PESQUISA}"
  Wait Until Element Is Visible  locator=${BTN_PESQUISAR}  
  Click Button  ${BTN_PESQUISAR}
  Input Text  ${INPUT_PESQUISAR}  ${TEXTO_PESQUISA}
  Wait Until Element Is Visible  locator=${SUBMIT_PESQUISAR}  
  Click Element  ${SUBMIT_PESQUISAR}  

Conferir mensagem de pesquisa "${MSG_DESEJADA}"
  Page Should Contain  text=${MSG_DESEJADA}  

Fechar Navegador
  Close Browser

Acessar o post "${TEXTO_PESQUISA}"
  Pesquisar um post contendo "${TEXTO_PESQUISA}"
  Click Link  ${LINK_POST}
  Wait Until Page Contains  O que é Robot Framework?       

Conferir se a imagem do robô é exibida
  Page Should Contain Image  ${IMG_ROBO}    

Conferir no post se o texto "${TEXTO_DESEJADO}" é exibido
  Page Should Contain  text=${TEXTO_DESEJADO}   

  

  


  
  

                                                                                                  
  