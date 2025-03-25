*** Test Cases ***

forLoop1
    FOR    ${i}    IN RANGE    1   10
      log to console    ${i}
      END



forloop2
    FOR     ${j}    IN     1     2   3    4   5
        LOG TO CONSOLE    ${j}
        END



forloop3List
    @{items}    create list    22   23  33  55
    FOR    ${k}     IN    @{items}
        LOG TO CONSOLE    ${k}
        END

forloopstrings
    @{names}    create list    Navin    Neha    Gani    Ishika
    FOR    ${n}     IN    @{names}
        log to console    ${n}
        END


forLoopWithExit
    @{items}    create list    22   23  33  55
    FOR    ${n}     IN    @{items}
        LOG TO CONSOLE    ${n}
        exit for loop if    ${n}==33
        END