# String Calculator

Working through the TDD kata from Incubyte's assessment. Building it step by step in Ruby with RSpec.

## What it does

Simple string calculator that takes numbers and adds them up. Handles commas, newlines, custom delimiters, and throws errors for negative numbers.

## Running tests

```bash
bundle install
bundle exec rspec
```

## How I built it

Started with the simplest test - empty string returns 0. Then added one number, then two numbers. Kept going through each requirement step by step. Every test written first (failing), then just enough code to make it pass.

Each commit shows the progression. You can follow along the git history to see how the code evolved.
