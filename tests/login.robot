*** Settings ***
Documentation       Login Tests

Library             Browser


*** Test Cases ***
Logar na plataforma
    New Browser    headless=False
    New Page    https://trade-sticker-dev.vercel.app
    Fill Text    css=input[name="email"]    papito@gmail.com
    Fill Text    css=input[name="password"]    vaibrasil
    Click    css=button >> text=Entrar
    Get Text    css=.header-content strong    equal     Aquela figurinha incrível a um clique de distância.
    Take Screenshot
