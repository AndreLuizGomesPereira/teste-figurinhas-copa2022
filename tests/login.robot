*** Settings ***
Documentation       Login Tests

Resource            ../resources/main.resource

Test Setup          Start Test
Test Teardown       Finish Test


*** Test Cases ***
Logar na plataforma
    Do Login
    Get Text    css=.header-content strong    equal    Aquela figurinha incrível a um clique de distância.

Não deve logar com senha incorreta
    Go To Login Page
    Submit Credentials    papito@gmail.com    123456
    ${locator}    Set Variable    css=.Toastify__toast-body div >> text=Credenciais inválidas, tente novamente!
    Wait For Elements State    ${locator}    visible    1
    Sleep    1
