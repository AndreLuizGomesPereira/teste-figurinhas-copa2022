*** Settings ***
Documentation       Login Page

Resource            ../resources/main.resource


*** Keywords ***
Go To Login Page
    New Browser    headless=False
    New Page    https://trade-sticker-dev.vercel.app

Submit Credentials
    [Arguments]    ${email}    ${password}
    Fill Text    css=input[name="email"]    ${email}
    Fill Text    css=input[name="password"]    ${password}
    Click    css=button >> text=Entrar
