*** Settings ***
Resource    ../main.robot
Documentation    Toda e quaisquer Keywords ou variáveis relacionadas a página principal devem ser feita nesta secção

*** Variables *** 

&{home}  
...                                 input_Campo_Pesquisa=//*[@id="twotabsearchtextbox"]
...                                input_Botao_Pesquisa=//*[@id="nav-search-submit-button"]
...                               span_carrinho=//*[@id="nav-cart-text-container"]/span[2]
...                              objeto_pesquisa=fr
...                             aceitar_cookie=//*[@id="sp-cc-accept"]
...                            campo_para_validar=//input[@tabindex="1"]

${valida}                    //*[@id="search"]/span[2]/div/h1/div/div[1]/div/div/span[3]
${icone_carrinho}           //a[@id="nav-cart"]
${icone_ecolha do pais}    //*[@id="nav-global-location-popover-link"]
${botao_escolha_paises}   //*[@id="GLUXCountryListDropdown"]/span/span   
${pais_desejado}         //*[@id="GLUXCountryList_5"]
${tecla_enter}          //*[@id="twotabsearchtextbox"]


*** Keywords ***
que o utilizador está no site da amazon
    Open Browser                     ${geral.URL}    ${geral.Browser}
    Set Selenium Speed              0.7
    Set Selenium Speed             1s
    Click Element                 ${home.aceitar_cookie}   
    Maximize Browser Window
    Capture Page Screenshot     ${caminho_para_scr}/imgBarraPesq.png  


#TC01  CENÁRIO 1 suite1
que o utilizador já selecionou o país de entrega "Portugal"
    Click Element                   ${icone_ecolha do pais}
    Wait Until Element Is Visible  ${botao_escolha_paises}
    Click Element                 ${botao_escolha_paises}
    #Capture Page Screenshot     ${caminho_para_scr}/imgteste1.png  
    Click Element                ${pais_desejado}


que o utilizador já digitou o nome do produto na barra de pesquisa
    Click Element     ${home.input_Campo_Pesquisa}    
    Input Text       ${home.input_Campo_Pesquisa}  ${home.objeto_pesquisa}
    #Capture Page Screenshot     ${caminho_para_scr}/imgteste2.png  

clica no botão para efetuar a busca  
    Click Element          ${home.input_Botao_Pesquisa}
    Set Selenium Speed    1s
    
 é direcionado à página “lista de resultados"
    Element Should Be Visible      ${valida}    
    Set Selenium Speed            1s
    Capture Page Screenshot      ${caminho_para_scr}/imgListaResult.png
                        

#TC01 CENÁRIO 1 suite2
que o utilizador está na página principal do Amazon
    que o utilizador está no site da amazon

o utilizador seleciona o país de entrega "Portugal"
    que o utilizador já selecionou o país de entrega "Portugal"
   
seleciona o idioma "Português-PT"    
    o utilizador clica no ícone para alterar o idioma
    seleciona o idioma Português-PT
   

digita o nome do produto na barra de pesquisa
    que o utilizador já digitou o nome do produto na barra de pesquisa
pressiona ENTER  
    Press Keys    ${tecla_enter}    ENTER
é direcionado à página “lista de resultados”
   é direcionado à página “lista de resultados"