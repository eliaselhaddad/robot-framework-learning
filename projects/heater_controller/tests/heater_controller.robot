*** Settings ***
Documentation    Tests a simulated heater controller through a Python library.
Library    ../libraries/heater_controller.py
Test Setup    Reset Controller

*** Test Cases ***
Get Controller Status
    ${status}=    Get Controller Status
    Should Be Equal    ${status}    OFF

Turn On Controller
    Turn On Controller
    ${status}=    Get Controller Status
    Should Be Equal    ${status}    ON

Turn Off Controller
    Turn On Controller
    Turn Off Controller
    ${status}=    Get Controller Status
    Should Be Equal    ${status}    OFF