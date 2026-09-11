*** Settings ***
Documentation    Lesson 3 - Return Values
...              Learn how custom keywords can return values that can be stored and used later.


*** Test Cases ***
Addition With Return Value
    [Documentation]    Call a custom keyword, store its returned value, and verify it.

    ${answer}=    Add Two Numbers    10    5
    Should Be Equal As Integers    ${answer}    15

Multiplication With Return Value
    ${answer}=    Multiply Two Numbers    6    4
    Should Be Equal As Integers    ${answer}    24


*** Keywords ***
Add Two Numbers
    [Documentation]    Add two numbers and return the result.
    [Arguments]    ${a}    ${b}

    ${result}=    Evaluate    ${a} + ${b}
    RETURN    ${result}

Multiply Two Numbers
    [Arguments]    ${a}    ${b}

    ${result}=    Evaluate    ${a} * ${b}
    RETURN    ${result}

