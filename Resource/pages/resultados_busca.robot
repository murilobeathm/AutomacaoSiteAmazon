*** Settings ***
Resource    ../main.robot
Documentation    Toda e quaisquer Keywords ou variáveis relacionadas aos resultados da busca 
...              devem ser feita nesta secção

*** Variables ***
${escolha_produto}               //*[@id="search"]/div[1]/div[1]/div/span[1]/div[1]/div[3]/div/div/div/div/div/div/div[2]/div[1]/h2/a/span
${valida_produto_escolhido}     //*[@id="buy-now-button"]     
${span_verifica_novos}         //*[@id="search"]/div[1]/div[1]/div/span[1]/div[1]/div[1]/div/span/div/div/span
${novo_produto}               //*[@id="search"]/div[1]/div[1]/div/span[1]/div[1]/div[2]/div/div/div/div/div/div/div[1]/span/a/div/img
${valida_pesquisa}           //*[@id="search"]/span[2]/div/h1/div/div[1]/div/div/span[3]

*** Keywords ***
#Cenário 2 TC01 SUITE1
que o utilizador está na “lista de resultados” dentro da pesquisa realizada 
    Element Should Be Visible    ${valida_pesquisa}
o utilizador seleciona o produto
    Click Element            ${escolha_produto}
    Set Selenium Speed      1s

é direcionado à página “detalhes do produto”
     Element Should Be Visible    ${valida_produto_escolhido} 
     Capture Page Screenshot    ${caminho_para_scr}/imdDetalheProdut.png


#CENÁRIO 2 TC01-SUITE2
que o utilizador está na página “lista de resultados”
    Wait Until Element Is Visible    ${valida}
seleciona o produto desejado
   o utilizador seleciona o produto

seleciona a opção ver mais detalhes
    Click Element    ${opcao_verMais}

seleciona a opção comprar já
    Capture Page Screenshot    ${caminho_para_scr}/imgComprarJa.png
    Click Element             ${input_Comprar_Ja}
é direcionado a página do login
    Wait Until Element Is Visible    ${input_Campo_Email}




   

