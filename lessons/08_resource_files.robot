*** Settings ***
Documentation    Lesson 8 - Resource Files
...              Learn how to move reusable keywords into separate resource files.

Resource         ../resources/math_keywords.resource


*** Test Cases ***
Use Keyword From Resource File
    [Documentation]    Call keywords imported from an external resource file.

    ${sum}=    Add Two Numbers    10    5
    ${product}=    Multiply Two Numbers    6    4

    Should Be Equal As Integers    ${sum}    15
    Should Be Equal As Integers    ${product}    24