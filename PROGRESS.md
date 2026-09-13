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

## Next
- Lesson 10 - Simulated Device Testing

## Current Goal
Learn Robot Framework step by step without letting Codex solve the learning exercises automatically.

## Handoff
- Project state inspected: lessons 1 through 9, the reusable math resource, and the math Python library remain present.
- Lesson 10 was started with `libraries/simulated_device.py` and `lessons/10_simulated_device.robot`.
- The simulated device currently supports `turn_on`, `turn_off`, and `get_status` keywords using shared `OFF`/`ON` state.
- Lesson 10 includes independent tests for turning the device on and off. Both tests pass when run with `robot lessons/10_simulated_device.robot`.
- Unfinished work: add a module-level `temperature` state (suggested initial value: `25`), then build temperature-related Python keywords and Robot tests one step at a time.
- Next recommended step: continue Lesson 10 by adding `temperature = 25` to `libraries/simulated_device.py`; do not add temperature functions yet.
