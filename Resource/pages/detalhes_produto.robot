*** Settings ***
Resource    ../main.robot
Documentation    Toda e quaisquer Keywords ou variáveis relacionadas aos detalhes do Produto 
...              devem ser feita nesta secção

*** Variables ***
${opcao_verMais}                      //*[@id="poToggleButton"]/a/span
${add_product_cart}                 //input[@id="add-to-cart-button"]
${ir_para_carrinho}               //*[@id="sw-gtc"]/span/a


#carrinho
${botao_finaliza_compra}       //input[@data-feature-id="proceed-to-checkout-action"]  

${input_Adicionae_Car}     //input[contains(@name,'submit.add-to-cart')]

${input_Comprar_Ja}     //*[@id="buy-now-button"]


*** Keywords ***
#TC02 CENÁRIO 1 suite2
que o utilizador está na página “detalhes do produto”
    Wait Until Element Is Visible    ${valida_produto_escolhido}

o utilizador adiciona 1 produto ao carrinho
    Click Element          ${add_product_cart}
    Set Selenium Speed    1s
seleciona a opção “ir para o carrinho”
    Click Element                ${ir_para_carrinho}
    Capture Page Screenshot    ${caminho_para_scr}/imgBotaoIrPCar.png
   

é dada a opção de continuar a compra ou ir para o carrinho
    Wait Until Element Is Visible   ${botao_finaliza_compra}
   


#TC02 CENÁRIO 2 SUITE2
que o utilizador está nos detalhes do produto
    que o utilizador já tem 1 produto no carrinho   
     
    o utilizador exclui todos os produtos do carrinho
    Click Element                     ${icone_amazon}
    Wait Until Element Is Visible    ${home.input_Campo_Pesquisa}
    
seleciona mais de um produto na opção "quantidade"
    que o utilizador já digitou o nome do produto na barra de pesquisa
    pressiona ENTER 
    seleciona o produto desejado
    Click Element               ${quantidade_det_produ} 
    Capture Page Screenshot    ${caminho_para_scr}/imgQtdProdt.png
    Click Element             ${quantidade_2}
         
adiciona ao carrinho
    o utilizador adiciona 1 produto ao carrinho
no pré-carrinho seleciona a opção "finalizar compra"
    Capture Page Screenshot    ${caminho_para_scr}/imgPreCar.png
   click Element              ${botao_finaliza_compra} 
é direcionado a página de login
    é direcionado a página do login
    fechar o browser


            


