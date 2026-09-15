# Robot Framework Learning Project

A step-by-step learning project for Robot Framework and Python test automation.

The goal is to build a solid foundation in Robot Framework and gradually move toward practical QA, API, and embedded-system test automation.

## What I Have Learned

### Lesson 1 - Basics
- Test cases
- Variables
- Assertions
- Basic calculations

### Lesson 2 - Custom Keywords
- Creating reusable keywords
- Passing arguments to keywords

### Lesson 3 - Return Values
- Returning values from custom keywords
- Storing returned values

### Lesson 4 - Variables and Scope
- Local variables
- Suite variables
- Passing variables to keywords

### Lesson 5 - Setup and Teardown
- Test setup
- Test teardown
- Preparing and cleaning up test environments

### Lesson 6 - Conditions and Loops
- IF / ELSE
- FOR loops
- Combining loops and conditions

### Lesson 7 - Lists and Collections
- Creating lists
- Looping through lists
- Collections library

### Lesson 8 - Resource Files
- Moving reusable keywords into `.resource` files
- Importing resources into test suites

### Lesson 9 - Python Libraries
- Creating custom Robot Framework keywords in Python
- Importing Python libraries into Robot Framework
- Returning Python values to Robot tests

### Lesson 10 - Simulated Device Testing
- Testing shared simulated-device state through a Python library
- Updating and reading temperature values
- Using test setup to reset state and keep tests independent

## Next Step

The simulated heater-controller mini project applies the lessons in a realistic stateful-device workflow: Python functions model controller state, and Robot Framework tests verify power behavior with a reset before every test.

The next recommended step is a separate embedded-device test-harness project with a simulated command/response interface, a Python communication layer, and Robot Framework tests for normal and error behavior.

## Project Structure

```text
robot-framework/
├── lessons/
├── projects/
├── resources/
├── libraries/
├── AGENTS.md
├── PROGRESS.md
└── README.md
