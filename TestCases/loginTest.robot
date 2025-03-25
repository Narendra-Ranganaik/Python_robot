*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/demoLogin.robot

*** Variables ***
${url}  https://demo.guru99.com/test/newtours/index.php
${browser}  headlesschrome
${username}     tutorial
${password}     tutorial

*** Test Cases ***
LoginTest
    open my browser     ${url}  ${browser}
    enter user name     ${username}
    enter password      ${password}
    Click signIn
    sleep    3
    verify login success
    sleep    2
    close my browser