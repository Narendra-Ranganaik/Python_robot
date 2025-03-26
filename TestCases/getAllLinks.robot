*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
getLinksall
    open browser    https://demoqa.com/links    headlessChrome
    maximize browser window
    sleep    3
    #store number of links
    ${allLinks}=    get element count    xpath://a
    log to console    ${allLinks}

    ${links}    create list
    FOR    ${i}     IN RANGE    ${allLinks}
       ${individual}=   get text    xpath:(//a)[${i}+1]
       log to console    ${individual}
       END

