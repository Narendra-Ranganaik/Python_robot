*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}      https://www.google.com
${Browser}  headlessChrome
*** Test Cases ***
Open Google
    Open Browser    ${URL}    ${Browser}
    Title Should Be    Google
    Close Browser

#Just a comment to verify git integration and Pipeline trigger
#Just a second comment to verify git integration and Pipeline 
