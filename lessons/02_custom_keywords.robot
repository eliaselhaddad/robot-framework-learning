*** Settings ***
Documentation    Lesson 2 - Custom Keywords
...              Learn how to create reusable keywords and pass arguments to them.


*** Test Cases ***
Addition Test
    [Documentation]    Verify that two numbers are added correctly.
    Add Two Numbers    10    5    15

Subtraction Test
    [Documentation]    Verify that one number is subtracted from another.
    Subtract Two Numbers    10    5    5

Multiplication Test
    Multiply Two Numbers    6    4    24


*** Keywords ***
Add Two Numbers
    [Documentation]    Add two numbers and compare the result with the expected value.
    [Arguments]    ${a}    ${b}    ${expected}

    ${result}=    Evaluate    ${a} + ${b}
    Should Be Equal As Integers    ${result}    ${expected}

Subtract Two Numbers
    [Documentation]    Subtract the second number from the first and verify the result.
    [Arguments]    ${a}    ${b}    ${expected}

    ${result}=    Evaluate    ${a} - ${b}
    Should Be Equal As Integers    ${result}    ${expected}

Multiply Two Numbers
    [Documentation]    Multiply two numbers and verify the expected result.
    [Arguments]    ${a}    ${b}    ${expected}

    ${result}=    Evaluate    ${a} * ${b}
    Should Be Equal As Integers    ${result}    ${expected}