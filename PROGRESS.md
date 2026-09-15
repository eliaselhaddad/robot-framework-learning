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
- Start a separate embedded-device test-harness repository.

## Current Goal
Learn Robot Framework step by step without letting Codex solve the learning exercises automatically.

## Handoff
- Lessons 1 through 10 remain complete, including reusable resource files and Python-library integration.
- The simulated-device Lesson 10 suite has five independent tests using `Test Setup    Reset Device`.
- The heater-controller mini project now has a Python library and Robot test suite.
- Implemented controller status behavior: it starts `OFF`, can be turned `ON` and `OFF`, and is reset to `OFF` with temperature reset to `25`.
- Added `Test Setup    Reset Controller`, so each heater-controller test starts from the same known state.
- The heater-controller suite has three passing tests: initial status, turn on, and turn off. Verified with `robot projects/heater_controller/tests/heater_controller.robot`.
- Decided to keep this repository focused on learning exercises and begin the next realistic project in a separate repository.
- Next recommended step: scope and create an embedded-device test harness with a simulated command/response interface, Python communication library, and Robot Framework tests for normal and error behavior.
