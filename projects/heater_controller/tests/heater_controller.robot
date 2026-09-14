*** Settings ***
Documentation    Tests a simulated heater controller through a Python library.
Library    ../libraries/heater_controller.py

*** Test Cases ***
Get Controller Status
    ${status}=    Get Controller Status
    Should Be Equal    ${status}    OFF