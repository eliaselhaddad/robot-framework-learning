*** Settings ***
Documentation    Lesson 5 - Setup and Teardown
...              Learn how to run actions before and after each test.

Test Setup       Prepare Test
Test Teardown    Clean Up Test


*** Variables ***
${DEVICE_STATUS}    OFF


*** Test Cases ***
First Test
    [Documentation]    Verify that setup prepared the device.

    Log To Console    Device status is ${DEVICE_STATUS}
    Should Be Equal    ${DEVICE_STATUS}    ON


Second Test
    [Documentation]    Demonstrate the same setup and teardown with another test.

    Log To Console    Running Second Test


*** Keywords ***
Prepare Test
    [Documentation]    Simulate preparing a device before each test.
    Log To Console    --> SETUP: Turning device ON
    Set Suite Variable    ${DEVICE_STATUS}    ON


Clean Up Test
    [Documentation]    Simulate cleaning up after each test.
    Log To Console    --> TEARDOWN: Turning device OFF
    Set Suite Variable    ${DEVICE_STATUS}    OFF