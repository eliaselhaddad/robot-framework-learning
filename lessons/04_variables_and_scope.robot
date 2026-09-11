*** Settings ***
Documentation    Lesson 4 - Variables and Scope
...              Learn the difference between suite variables and local variables.


*** Variables ***
${GREETING}         Hello
${DEFAULT_NUMBER}   10
${MULTIPLIER}       3


*** Test Cases ***
Use Suite Variables
    [Documentation]    Use variables defined in the Variables section.

    Should Be Equal    ${GREETING}    Hello
    Should Be Equal As Integers    ${DEFAULT_NUMBER}    10


Create Local Variable
    [Documentation]    Create a variable that exists inside this test.

    ${name}=    Set Variable    Elias

    Should Be Equal    ${name}    Elias


Pass Local Variable To Keyword
    [Documentation]    Pass a local variable as an argument to another keyword.

    ${name}=    Set Variable    Elias

    Show Greeting    ${name}


Use Suite Variable In Calculation
    [Documentation]    Use a suite variable together with a local variable.

    ${number}=    Set Variable    7
    ${result}=    Evaluate    ${number} * ${MULTIPLIER}

    Should Be Equal As Integers    ${result}    21
    

*** Keywords ***
Show Greeting
    [Documentation]    Display a greeting using a suite variable and an argument.
    [Arguments]    ${name}

    Log    ${GREETING}, ${name}!