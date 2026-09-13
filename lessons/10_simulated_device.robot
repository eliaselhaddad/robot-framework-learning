*** Settings ***
Documentation    Lesson 10 - Tests a simulated device through a Python library.
Library          ../libraries/simulated_device.py

*** Test Cases ***
Turn On Changes Device Status
    [Documentation]    Verifies that turning on the device changes its status to ON.
    Turn On
    ${status}=    Get Status
    Should Be Equal    ${status}    ON

Turn Off Changes Device Status
    [Documentation]    Verifies that turning off the device changes its status to OFF.
    Turn On
    Turn Off
    ${status}=    Get Status
    Should Be Equal    ${status}    OFF