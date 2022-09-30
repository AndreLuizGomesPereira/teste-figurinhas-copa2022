*** Settings ***
Documentation       Arquivo Principal do projeto

Library             Browser


*** Keywords ***
Go To Login Page
    New Page    https://trade-sticker-dev.vercel.app

Submit Credentials
    [Arguments]    ${email}    ${password}
    Fill Text    css=input[name="email"]    ${email}
    Fill Text    css=input[name="password"]    ${password}
    Click    css=button >> text=Entrar

Do Login
    Go To Login Page
    Submit Credentials    papito@gmail.com    vaibrasil

Search User
    [Arguments]    ${target}
    Fill Text    input[placeholder^=Busque]    ${target}
    Click    css=button >> text=Buscar

Select Stciker
    [Arguments]    ${namePlayer}
    Click    xpath=//img[@alt="${namePlayer}"]/..
    Click    css=button >> text=Entrar em contato

WhatsApp Sticker Message
    [Arguments]    ${sticker_name}
    ${expected_message}    Set Variable
    ...    Oi, achei o seu contato no Trade Sticker. Estou interessado(a) na figurinha do ${sticker_name}, bora negociar?
    Switch Page    NEW
    Wait For Elements State    css=p >> text=${sticker_name}

Start Test
    New Browser    headless=False    browser=firefox

Finish Test
    Take Screenshot
