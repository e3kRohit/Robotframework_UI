*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://www.saucedemo.com/
${BROWSER}        Chrome

*** Test Cases ***
Valid Login
    Open Browser     ${LOGIN URL}    ${BROWSER}
    sleep  5s
    Input text       //input[@id="user-name"]    standard_user
    Input password   //input[@id="password"]     secret_sauce
    sleep  5s
    Click button     //input[@id="login-button"]
    sleep  5s
    Close Browser
