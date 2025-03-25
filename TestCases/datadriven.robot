*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/loginFile.robot
Suite Setup    open my browser
Suite Teardown    close my browser
Test Template    invalid input tests


*** Test Cases ***  username    pass
Test1   admin@yourstore.com     admin
Test2   adminn@yourstore.com     admin


*** Keywords ***
invalid input tests
    [Arguments]    ${username}  ${pass}
#    enter user name    ${username}
#    enter password    ${pass}
#    click on login button
#    sleep    15
#    verify error message
    close all browsers