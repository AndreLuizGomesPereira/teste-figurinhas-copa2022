*** Settings ***
Library     Browser


*** Test Cases ***
Deve validar o slogan da home page
    New Browser    headless=False
    New Page    https://trade-sticker-dev.vercel.app
    Get Text    .logo-container h2    contains    Conectando colecionadores de figurinhas da copa.
    Take Screenshot
