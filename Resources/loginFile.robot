*** Settings ***
Library    SeleniumLibrary


*** Variables ***
#${url}  https://admin-demo.nopcommerce.com/login
${url}  https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F
${browser}  headlesschrome


*** Keywords ***
open my browser
    open browser    ${url}  ${browser}
    maximize browser window

close my browser
    close all browsers

Open Login page
    go to    ${url}

enter user name
    [Arguments]     ${username}
    input text    id:Email  ${username}

enter password
    [Arguments]     ${password}
    input text    id:Password   ${password}

click on login button
    click element    xpath://button[text()='Log in']

click logout
    click element   xpath://a[@href='/logout']

verify error message
    page should contain    Login was unsuccessful.

verify login dashboard
    page should contain    Dashboard


