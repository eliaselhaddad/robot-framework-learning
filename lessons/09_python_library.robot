*** Settings ***
Documentation    Lesson 9 - Python Libraries
...              Learn how Robot Framework can call Python functions as keywords.

Library          ../libraries/math_library.py


*** Test Cases ***
Use Python Keyword
    [Documentation]    Call a keyword implemented in Python.

    ${result}=    Add Numbers    10    5

    Log To Console    Result from Python: ${result}
    Should Be Equal As Integers    ${result}    15