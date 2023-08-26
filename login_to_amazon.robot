*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        Chrome
${URL}            https://www.amazon.in/
${USERNAME}       sashankk4@gmail.com
${PASSWORD}       QSCplm@2

*** Test Cases ***
Open Amazon and Login
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Click Link      Sign in
    Input Text      id=ap_email    ${USERNAME}
    Input Text      id=ap_password    ${PASSWORD}
    Click Button    Sign-In
    Sleep           3s    # Give some time for the login to complete
    Close Browser

