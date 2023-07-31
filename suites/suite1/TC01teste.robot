*** Settings ***
#TC01teste.robot
Resource    ../../Resource/main.robot
Suite Setup    Acessar o site
Documentation     Os seguintes testes irão validar o inicio do ciclo 
...               Toda pesquisa deverá ser feita utilizando o botão de pesquisa

*** Test Cases ***

#feature Pesquisa
BACKGROUND
    GIVEN que o utilizador já selecionou o país de entrega "Portugal"
Cenário 1 - fazendo pesquisa      
    [Tags]    Pesquisa_Botão_Busca
    GIVEN que o utilizador já digitou o nome do produto na barra de pesquisa
    WHEN clica no botão para efetuar a busca
    THEN é direcionado à página “lista de resultados"
    
Cenário 2 - selecionando o produto desejado 
    GIVEN que o utilizador está na “lista de resultados” dentro da pesquisa realizada   
    WHEN o utilizador seleciona o produto 
    THEN é direcionado à página “detalhes do produto”
     

