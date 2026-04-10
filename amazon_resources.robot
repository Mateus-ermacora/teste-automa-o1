*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${URL}    https://www.amazon.com.br
${MENU_VENDAS}    xpath=//*[@id="nav-xshop"]/ul/li[1]/div/a
${HEADER_VENDAS}    //*[@id="a-page"]/div[1]/div[2]/div[2]/div/div/div/div[1]/div[1]/div[3]/div/div[1]/div[3]/h1
${TEXTO_VENDAS}    para começar a usar qualquer logística da Amazon

*** Keywords ***
Abrir o navegador
    Open Browser   browser=chrome
    Set Window Size    1366  768 

Fechar o navegador
    Capture page Screenshot
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible   locator=${MENU_VENDAS}

Entrar no menu "Venda na Amazon"
    Click Element   locator=${MENU_VENDAS}

Verificar se aparece a frase "para começar a usar qualquer logística da Amazon"
    Wait Until Page Contains   text=${TEXTO_VENDAS}
    Wait Until Element Is Visible  locator=${HEADER_VENDAS} 

Digitar o nome do produto "${NOME_PRODUTO}" na barra de pesquisa
    Input Text    locator=twotabsearchtextbox  text=${NOME_PRODUTO}
Clicar no botão de pesquisa
    Click Button  locator=nav-search-submit-button
Verificar o resultado da pesquisa se está listando o produto "${NOME_PRODUTO}"
    Wait Until Page Contains   text=${NOME_PRODUTO}