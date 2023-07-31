*** Settings ***
Resource    ../main.robot
Documentation    Toda e quaisquer Keywords ou variáveis relacionadas a página de Login devem ser feita nesta secção

*** Variables ***
${input_Campo_Email}     //*[@id="ap_email"]
${logo_do_login}        //i[contains(@class,'a-icon a-icon-logo')]


