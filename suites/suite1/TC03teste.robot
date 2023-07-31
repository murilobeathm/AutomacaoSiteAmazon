*** Settings ***
Resource    ../../Resource/main.robot
Documentation    Os Seguintes testes validam as opções de idioma e exclusão de produtos utilizando ciclo while

*** Test Cases ***

#Feature Carrinho
BACKGROUND:
    GIVEN que o utilizador já tem 1 produto no carrinho
    AND está na página do carrinho

Cenário 1: validando o idioma
    WHEN o utilizador clica no ícone para alterar o idioma
    AND seleciona o idioma Português-PT
    THEN o idioma da página é alterado de acordo com a opção escolhida
Cenário 2: atualizar os itens do carrinho automaticamente
    WHEN o utilizador seleciona a opção “ver mais produtos como este”
    AND adiciona 1 outro produto ao seu carrinho
	THEN é direcionado à página de detalhes do carrinho
    AND o total de itens do carrinho é atualizado automaticamente

Cenário 3: Mensagem de aviso de carrinho vazio
 	WHEN o utilizador exclui todos os produtos do carrinho	
	THEN aperece no ecrã uma mensagem indicando que o carrinho está vazio





