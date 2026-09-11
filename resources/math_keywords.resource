*** Settings ***
Documentation    Reusable math keywords used by Robot Framework tests.


*** Keywords ***
Add Two Numbers
    [Documentation]    Add two numbers and return the result.
    [Arguments]    ${a}    ${b}

    ${result}=    Evaluate    ${a} + ${b}
    RETURN    ${result}


Multiply Two Numbers
    [Documentation]    Multiply two numbers and return the result.
    [Arguments]    ${a}    ${b}

    ${result}=    Evaluate    ${a} * ${b}
    RETURN    ${result}