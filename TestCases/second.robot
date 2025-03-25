*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://demoqa.com/elements
${browser}  headlessChrome
#${url2}  https://demoqa.com/buttons
#${browser2}  Chrome


*** Test Cases ***
demo
    set selenium timeout    5
    open browser    ${url}  ${browser}
    maximize browser window
    title should be    DEMOQA
    click element    xpath:(//li[@id='item-0'])[1]
    input text    id:userName   Navin
    input text    id:userEmail  navin@gmail.com
    click element    xpath:(//li[@id='item-1'])[1]
    sleep    2
#    wait until element is enabled    xpath://input[@id='tree-node-home']/../span[1]
#    select checkbox    xpath://input[@id='tree-node-home']/../span[1]
    sleep    2
    click element    xpath:(//li[@id='item-4'])[1]
    sleep    2
    double click element    xpath://button[@id='doubleClickBtn']
    sleep    4
    open context menu    xpath://button[@id='rightClickBtn']
    sleep    4
    close browser

*** Keywords ***