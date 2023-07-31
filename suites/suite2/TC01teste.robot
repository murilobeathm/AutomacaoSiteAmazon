*** Settings ***
Resource    ../../Resource/main.robot
Documentation    Os seguintes testes iniciam um novo ciclo utilizando o ENTER para procurar produtos
...              Também se validam algumas opções dadas ao utilizador nos detalhes do carrinho

*** Test Cases ***

#Feature Pesquisa

Cenário 1: validando a busca com ENTER
    [Tags]    Pesquisa_ENTER
    GIVEN que o utilizador está na página principal do Amazon
    WHEN o utilizador seleciona o país de entrega "Portugal"
    AND seleciona o idioma "Português-PT"  
    AND digita o nome do produto na barra de pesquisa
	AND pressiona ENTER
	THEN é direcionado à página “lista de resultados”




Cenário 2: detalhes do produto
    #[Tags]    forçar_erro
    GIVEN que o utilizador está na página “lista de resultados”
    WHEN seleciona o produto desejado
    AND seleciona a opção ver mais detalhes
    AND seleciona a opção comprar já
    THEN é direcionado a página do login