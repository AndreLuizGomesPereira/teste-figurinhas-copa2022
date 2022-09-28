*** Settings ***
Documentation       Teste de negociação de figurinha da copa

Resource            ../pages/login.resource
Resource            ../resources/main.resource


*** Variables ***
${neymar}       Neymar Jr


*** Test Cases ***
Deve negociar a figurinha Neymar Legend
    Go To Login Page
    Submit Credentials    papito@gmail.com    vaibrasil
    Search User    legend
    Select Stciker    ${neymar}
    WhatsApp Sticker Message    ${neymar}
    Take Screenshot
    Sleep    5
