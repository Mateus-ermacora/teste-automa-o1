*** Settings ***
Documentation   Essa suíte testa o site da Amazon.com.br
Resource        amazon_resources.robot
Test Setup      Abrir o navegador
Test Teardown   Fechar o navegador

*** Test Cases ***

Caso de teste 1 - Acesso ao menu venda na Amazon
    [Tags]           menus
   Acessar a home page do site Amazon.com.br
    Entrar no menu "Venda na Amazon"
    Verificar se aparece a frase "para começar a usar qualquer logística da Amazon"


Caso de teste 02 - Pesquisa de um Produto
    [Documentation]  Esse teste verifica a busca de um produto 
    [Tags]           busca_produtos  lista_busca
    Acessar a home page do site Amazon.com.br
    Digitar o nome do produto "Playstation 5" na barra de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se está listando o produto "PlayStation®5 Slim Edição Digital"