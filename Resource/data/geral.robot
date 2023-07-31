*** Settings ***
Resource    ../main.robot
Documentation    Aqui constam as principais variáveis, com base para o início dos Testes

*** Variables ***
&{geral}
...      URL=https://www.amazon.es/
...     Browser=chrome
...    add_carrinho=//input[@id="add-to-cart-button"]

${caminho_para_scr}    C:\Projetos\RobotFrameWork\ProjetoAmazonOficial\Results


*** Keywords ***
Add Product to Cart 
    Click Element         //input[@id="add-to-cart-button"]