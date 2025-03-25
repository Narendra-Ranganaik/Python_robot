*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/pageObjects.py


*** Keywords ***
Open my browser
    [Arguments]    ${url}   ${browser}
    open browser    ${url}   ${browser}
    maximize browser window

Enter username
    [Arguments]    ${username}
    input text  ${input_username}     ${username}

Enter password
    [Arguments]    ${password}
    input text  ${input_password}     ${password}

Click signIn
    click element    ${btn_login}

verify login success
    title should be    Login: Mercury Tours

close my browser
    close all browsers

