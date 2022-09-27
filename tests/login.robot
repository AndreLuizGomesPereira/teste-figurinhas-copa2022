*** Settings ***
Documentation       Login Tests

Library             Browser


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


*** Keywords ***
Go To Login Page
    New Browser    headless=False
    New Page    https://trade-sticker-dev.vercel.app

Submit Credentials
    [Arguments]    ${email}    ${password}
    Fill Text    css=input[name="email"]    ${email}
    Fill Text    css=input[name="password"]    ${password}
    Click    css=button >> text=Entrar
