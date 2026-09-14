# Progress

## Completed
- Lesson 1 - Basics
- Lesson 2 - Custom Keywords
- Lesson 3 - Return Values
- Lesson 4 - Variables and Scope
- Lesson 5 - Setup and Teardown
- Lesson 6 - Conditions and Loops
- Lesson 7 - Lists
- Lesson 8 - Resource Files
- Lesson 9 - Python Libraries
- Lesson 10 - Simulated Device Testing

## Next
- Mini Project - Simulated Device Controller Testing

## Current Goal
Learn Robot Framework step by step without letting Codex solve the learning exercises automatically.

## Handoff
- Project state inspected: lessons 1 through 9, the reusable math resource, and the math Python library remain present.
- Lesson 10 was completed with a simulated device Python library and Robot Framework suite.
- The device supports status control, temperature reads and updates, temperature increases, and resetting state before each test.
- `Test Setup    Reset Device` keeps the five Lesson 10 tests independent. All pass with `robot lessons/10_simulated_device.robot`.
- Started `projects/heater_controller/` with separate `libraries/` and `tests/` folders.
- Added `heater_controller.py` with initial `OFF` controller state, initial temperature of `25`, and `get_controller_status()`.
- Added `heater_controller.robot`, which imports the project library and verifies the controller starts `OFF`. It passes with `robot projects/heater_controller/tests/heater_controller.robot`.
- Updated `AGENTS.md`: documentation is now expected only when it adds context beyond an obvious name or implementation.
- Unfinished work: implement the remaining heater-controller behavior one requirement at a time, including power control, reset/setup, and controlled temperature changes.
- Next recommended step: add a `turn_on()` function to the project library and a test that verifies the controller status changes to `ON`.
