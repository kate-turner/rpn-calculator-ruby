# rpn-calculator-ruby
This is a simple Ruby-based Command Line Interface Polish Notation Calculator.

## Usage
To use this calculator, clone the repository, navigate to the root of the directory on the command line, and run the program using:

```ruby cli.rb```

The program uses standard in and standard out notation to accept and return data. One number or operator per line. 

Accepted arithmetic operations: +, -, *, / 

Use ('q') to quit. 

## Development
This assignment was a deep diving into learning to write my first Ruby application!

CLI 
A simple do while loop was used to handle input/output.  On input it will instantiate a new Calculator class passing input as an argument.  The CLI will also rescue any error exceptions.  The loop is exited when a user types 'q'

Calculator
User input is passed to the Calculator class which uses method calculate to handle RPN evaluation.  A switch statement is used to check if the input is numeric or an accepted arithmetic operation.  Arithmetic operation methods have been broken out into seperate methods in order to keep code simple and concise.  Helper raise_if_insufficient_operands and raise_if_second_value_is_zero methods are conditionally checked for error handling 
