*** Settings ***
Documentation    Lesson 1 - Robot Framework Basics
...              This lesson introduces test cases, variables,
...              calculations, and assertions.


*** Test Cases ***
Math Test
    [Documentation]    Store values, perform calculations, and verify the results.

    # Store values in variables
    ${a}=    Set Variable    10
    ${b}=    Set Variable    5

    # Perform calculations
    ${sum}=    Evaluate    ${a} + ${b}
    ${difference}=    Evaluate    ${a} - ${b}

    # Verify that the actual results match the expected results
    Should Be Equal As Integers    ${sum}    15
    Should Be Equal As Integers    ${difference}    5