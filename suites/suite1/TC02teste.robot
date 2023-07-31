*** Settings ***
Resource        ../../Resource/main.robot

*** Test Cases ***

#Feature Produto
Cenário 1: Adicionar produtos ao carrinho
    [Documentation]  O seguinte teste deverá adicionar um produto ao carrinho
	GIVEN que o utilizador está na página “detalhes do produto”
	WHEN o utilizador adiciona 1 produto ao carrinho
	AND seleciona a opção “ir para o carrinho”
	THEN é dada a opção de continuar a compra ou ir para o carrinho



#Feature Carrinho
Cenário 2: Após finalização da compra o utilizador é direcionado à página de login
    [Documentation]   Para iniciar o seguinte teste deverá ter um item no carrinho
    GIVEN que já existem produtos no carrinho
    WHEN o utilizador adiciona mais um produto  
    AND seleciona a opção “finalizar compra”
	THEN é direcionado à página de login




