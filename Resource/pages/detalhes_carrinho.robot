*** Settings ***
Resource    ../main.robot
Documentation    Todas e quaisquer Keywords ou variáveis relacionadas aos detalhes do Carrinho 
...              devem ser feita nesta secção

*** Variables ***
${texto}                                                Carrinho de compras
${texto_carrinho}                                     //*[@id="sc-active-cart"]/div/div/div/h1
${mensagem_carrinho_vazio}                          //*[@id="sc-active-cart"]/div/div/div/h1
${quantidade_Prod_icone_carrinho}                 //*[@id="nav-cart-count"]
${span_botao_Qtd}                               //span[@data-csa-c-func-deps="aui-da-a-dropdown-button"]
${tabindex_quantidade2}                       //a[@id="quantity_2"]
${input_Apagar}                             //input[@data-action="delete"]
${input_Ver_P_ComoEste}                   //input[@value="Ver mais produtos como este"]     
${adc_produto_produt_semelhante}        //*[@id="a-popover-content-2"]/div/div/div/table/tbody/tr[6]/td[6]/span/span/span/input                
${opcao_indioma}                      //*[@id="icp-nav-flyout"]/span/span[2]
${idioma_PT}                        //*[@id="icp-language-settings"]/div[3]/div/label/i
${guardar_alteracoes}             //*[@id="icp-save-button"]/span/input
${valida_texto_PT}              //*[@id="sc-active-cart"]/div/div/div/h1
${icone_amazon}               //*[@id="nav-logo-sprites"]
${quantidade_det_produ}     //select[@name="quantity"]
${quantidade_2}           //*[@id="quantity"]/option[2]



*** Keywords ***

#TC02 CENÁRIO 2 suite1
que já existem produtos no carrinho
       é dada a opção de continuar a compra ou ir para o carrinho
       Set Selenium Speed    1s
o utilizador adiciona mais um produto 
    Click Element                          ${span_botao_Qtd}
    Click Element                         ${tabindex_quantidade2}
    Capture Page Screenshot              ${caminho_para_scr}/imgCarrinho.png
seleciona a opção “finalizar compra”
    Click Element                       ${botao_finaliza_compra}
    
é direcionado à página de login
    Wait Until Element Is Visible    ${input_Campo_Email}
    Capture Page Screenshot        ${caminho_para_scr}/imgLogin.png




#BACKGROUND TC03 suite1
que o utilizador já tem 1 produto no carrinho
    é direcionado à página de login
    Click Element                                                  ${logo_do_login}
    Set Selenium Speed                                            1s                                                        
    Click Element                                                ${icone_carrinho}

está na página do carrinho
   Wait Until Element Is Visible                               ${icone_carrinho}  


#TC03 CENÁRIO 1 suite1
o utilizador clica no ícone para alterar o idioma
    Click Element                                           ${opcao_indioma} 
    Wait Until Element Is Visible                          ${idioma_PT}
    Capture Page Screenshot                               ${caminho_para_scr}/imgOpcIdioma.png

seleciona o idioma Português-PT   
    Click Element                                        ${idioma_PT}
    Click Element                                       ${guardar_alteracoes}
    Capture Page Screenshot                            ${caminho_para_scr}/imgIdiomaPT.png    

o idioma da página é alterado de acordo com a opção escolhida
    Wait Until Element Is Visible                    ${valida_texto_PT}
    



#CENÁRIO 2 TC03 suite1
o utilizador seleciona a opção “ver mais produtos como este”
    Click Element                               ${input_Ver_P_ComoEste}
    Capture Page Screenshot                    ${caminho_para_scr}/imgProdtSemelhante.png
adiciona 1 outro produto ao seu carrinho 
    Wait Until Element Is Visible             ${adc_produto_produt_semelhante}
            Click Element                    ${adc_produto_produt_semelhante}

é direcionado à página de detalhes do carrinho
    Wait Until Element Is Visible        ${botao_finaliza_compra}

o total de itens do carrinho é atualizado automaticamente
    Wait Until Element Is Visible    ${icone_carrinho}


    #CENÁRIO 2    TC03  suite1
o utilizador exclui todos os produtos do carrinho	
    ${texto}=  Get Text    ${texto_carrinho}
    WHILE    '${texto}' !='O seu carrinho da Amazon está vazio.'
        Wait Until Element Is Visible    ${input_Apagar}
        Click Element    ${input_Apagar}
       ${texto}=  Get Text    ${texto_carrinho}
    END

aperece no ecrã uma mensagem indicando que o carrinho está vazio
    Wait Until Element Is Visible    ${mensagem_carrinho_vazio}
    Capture Page Screenshot         ${caminho_para_scr}/imgCarrinhoVazio.png
    fechar o browser

