# String Calculator

TDD kata from Incubyte's assessment. Full implementation in Ruby with RSpec.

## What it does

Takes a string of numbers and adds them up. Handles:
- Empty strings (returns 0)
- Single numbers
- Multiple numbers separated by commas
- Newlines as separators
- Custom delimiters
- Multi-character delimiters with brackets
- Multiple delimiters at once
- Errors on negative numbers
- Ignores numbers over 1000

## Running tests

```bash
bundle install
bundle exec rspec
```

## Built with TDD

Started with empty string returns 0, then kept adding one test at a time. Every test written first (failing), then just enough code to pass. Follow along the git history to see how it evolved.
