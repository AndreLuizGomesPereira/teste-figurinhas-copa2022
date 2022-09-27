*** Settings ***
Documentation       Login Tests

Resource            ../resources/main.resource
Resource            ../pages/login.resource


*** Test Cases ***
Logar na plataforma
    Go To Login Page
    Submit Credentials    papito@gmail.com    vaibrasil
    Get Text    css=.header-content strong    equal    Aquela figurinha incrível a um clique de distância.
    Take Screenshot

Não deve logar com senha incorreta
    Go To Login Page
    Submit Credentials    papito@gmail.com    123456
    ${locator}    Set Variable    css=.Toastify__toast-body div >> text=Credenciais inválidas, tente novamente!
    Wait For Elements State    ${locator}    visible    1
