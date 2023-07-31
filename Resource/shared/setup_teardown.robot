*** Settings ***
Resource    ../main.robot
Documentation    está armazenado a pré condição para início dos testes e fim do ciclo

*** Keywords ***
#Setup
Acessar o site
    GIVEN que o utilizador está no site da amazon


#Teardown
fechar o browser
    Close Browser