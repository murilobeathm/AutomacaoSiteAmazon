*** Settings ***
Resource    ../../Resource/main.robot

*** Test Cases ***

#Feature Produto
Cenário 1: comprando o produto após alterar a quantidade 
    [Documentation]    O seguinte cenário valida a navegação em outra pespectiva, sendo iniciada já com produtos no carrinho 
    ...                E sendo iniciada na página de login
    GIVEN que o utilizador está nos detalhes do produto
    WHEN seleciona mais de um produto na opção "quantidade"
    AND adiciona ao carrinho
    AND no pré-carrinho seleciona a opção "finalizar compra"
    THEN é direcionado a página de login
    
   