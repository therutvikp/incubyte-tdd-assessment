# String Calculator TDD Kata

This is a Ruby implementation of the String Calculator TDD Kata from Incubyte.

## Requirements

- Create a simple String calculator with a method signature: `int add(string numbers)`
- Input: a string of comma-separated numbers
- Output: an integer, sum of the numbers

## Steps

1. ✅ Create a method that returns 0 for empty string
2. ⏳ Handle single number
3. ⏳ Handle two comma-separated numbers
4. ⏳ Allow the method to handle any amount of numbers
5. ⏳ Allow the method to handle new lines between numbers (instead of commas)
6. ⏳ Support different delimiters
7. ⏳ Throw exception for negative numbers with exception message showing the negative number(s)

## Setup

```bash
bundle install
rspec
```

## Test-Driven Development

This implementation follows TDD principles:
- Red: Write a failing test
- Green: Write the minimum code to pass
- Refactor: Improve the code while keeping tests green

Each TDD cycle is committed separately to show the evolution of the code.
