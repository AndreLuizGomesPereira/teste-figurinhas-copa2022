*** Settings ***
Documentation       Teste de negociação de figurinha da copa

Resource            ../resources/main.resource

Test Setup          Start Test
Test Teardown       Finish Test


*** Test Cases ***
Deve negociar a figurinha Neymar Legend
    Do Login
    Search User    legend
    Select Stciker    Neymar Jr
    WhatsApp Sticker Message    Neymar Jr
