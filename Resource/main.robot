*** Settings ***
Library    SeleniumLibrary
Documentation    Contém todos o arquivos do RESOURCE para que assim fique mais fácil utilizar 
...              os atributos que seram utilizador no decorrer da escrita dos testes


###  data ###
Resource    data/geral.robot

###  shared ###
Resource    shared/setup_teardown.robot

###  pages ###
Resource    pages/home_page.robot
Resource    pages/detalhes_carrinho.robot
Resource    pages/detalhes_produto.robot
Resource    pages/login.robot
Resource    pages/pre_carrinho.robot
Resource    pages/resultados_busca.robot