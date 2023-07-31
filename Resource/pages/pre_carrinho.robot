*** Settings ***
Resource    ../main.robot
Documentation    Toda e quaisquer Keywords ou variáveis relacionadas ao pré carrinho devem ser feita nesta secção

*** Variables ***
&{pre_carrinho}
...     input_Final_Compra=//*[@id="sc-buy-box-ptc-button"]/span/input
...    input_Ir_Carrinho=//*[@id="sw-gtc"]/span/a
	
