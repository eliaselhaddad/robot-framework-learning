*** Settings ***
Documentation    Lesson 6 - Conditions and Loops
...              Learn how to use IF conditions and FOR loops.


*** Test Cases ***
Check Temperature
    [Documentation]    Use an IF statement to check a simulated temperature.

    ${temperature}=    Set Variable    75

    IF    ${temperature} > 70
        Log To Console    Temperature is high
    ELSE
        Log To Console    Temperature is normal
    END


Loop Through Numbers
    [Documentation]    Loop through several values and print each one.

    FOR    ${number}    IN    1    2    3    4    5
        Log To Console    Current number: ${number}
    END


Check Multiple Temperatures
    [Documentation]    Loop through temperatures and classify each one.

    FOR    ${temperature}    IN    60    75    68    90
        IF    ${temperature} > 70
            Log To Console    ${temperature}: HIGH
        ELSE
            Log To Console    ${temperature}: NORMAL
        END
    END