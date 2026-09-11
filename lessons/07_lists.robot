*** Settings ***
Documentation    Lesson 7 - Lists
...              Learn how to create a list and access values inside it.
Library    Collections


*** Test Cases ***
Create And Read List
    [Documentation]    Create a list of temperatures and print each value.

    @{temperatures}=    Create List    60    75    68    90

    Log To Console    ${temperatures}[0]
    Log To Console    ${temperatures}[1]
    Log To Console    ${temperatures}[2]
    Log To Console    ${temperatures}[3]


Loop Through List
    [Documentation]    Loop through all temperatures in a list.

    @{temperatures}=    Create List    60    75    68    90

    FOR    ${temperature}    IN    @{temperatures}
        Log To Console    Temperature: ${temperature}
    END


Check Temperatures In List
    [Documentation]    Loop through a list and classify each temperature.

    @{temperatures}=    Create List    60    75    68    90

    FOR    ${temperature}    IN    @{temperatures}
        IF    ${temperature} > 70
            Log To Console    ${temperature}: HIGH
        ELSE
            Log To Console    ${temperature}: NORMAL
        END
    END


Work With List
    [Documentation]    Use built-in Collections keywords with a list.

    @{temperatures}=    Create List    60    75    68

    Append To List    ${temperatures}    90
    ${length}=    Get Length    ${temperatures}

    Log To Console    List: ${temperatures}
    Log To Console    Number of values: ${length}

    List Should Contain Value    ${temperatures}    75
    Should Be Equal As Integers    ${length}    4    