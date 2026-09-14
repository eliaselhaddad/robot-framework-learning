*** Settings ***
Documentation    Lesson 10 - Tests a simulated device through a Python library.
Library          ../libraries/simulated_device.py
Test Setup    Reset Device

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

Get Temperature
    [Documentation]    Verifies that the device starts at 25 degrees
    ${temperature}=    Get Temperature
    Should Be Equal As Integers    ${temperature}    25

Set Temperature
    [Documentation]    Verifies that setting the temperature updates the device state
    Set Temperature    30
    ${temperature}=    Get Temperature
    Should Be Equal As Integers    ${temperature}    30

Increase Temperature
    [Documentation]    Verifies that increasing the temperature updates the device state.
    Increase Temperature    5
    ${temperature}=    Get Temperature
    Should Be Equal As Integers    ${temperature}    30