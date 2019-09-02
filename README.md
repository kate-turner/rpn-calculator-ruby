# rpn-calculator-ruby
This is a simple Ruby-based Command Line Interface Polish Notation Calculator.

## Usage
To use this calculator, clone the repository, navigate to the root of the directory on the command line, and run the program using:

```ruby cli.rb```

The program uses standard in and standard out notation to accept and return data. One number or operator per line. 

Accepted arithmetic operations: +, -, *, / 

Use ('q') to quit. 

## Development
This assignment was a deep dive in learning to write my first Ruby application.  
The application was influenced by: https://github.com/toasterlovin/rpn_party

cli :
A do while loop was used to handle input/output and exit upon 'q'. On input it will instantiate a new Calculator class passing input as an argument to method calculate. The CLI will also rescue any raised error exceptions.  

calculator :
User input is passed to the Calculator class which uses method calculate to handle RPN evaluation and produce a result. A switch statement is used to check if the input is numeric or an accepted arithmetic operation. Numeric values are pushd to the top of the stack and operands pop the first two values from the stack to evaluate, and then push the result back to the stack. The result is what is left in the stack.  

Arithmetic operation methods have been broken out into seperate methods in order to keep code simple and concise.  Helper raise_if_insufficient_operands and raise_if_second_value_is_zero methods are conditionally checked for error handling and rescued in the cli 

## Comments
- Add testing to the calculator
- Perhaps optimize the calculate algorithm to shorten the code needed for checking the arithmetic operation 
- This simple program is fairly robust and gracefully handles errors