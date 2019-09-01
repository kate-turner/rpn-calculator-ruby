require_relative 'calculator'

    @calc = Calculator.new
  
    puts "Welcome to Reverse Polish Notation Calculator!"
    puts "TYPE one command per line"
    puts "Accepted arithmetic operations: +, -, *, /"
    puts "TYPE 'q' to exit"
    puts "HAPPY CALCULATING"
    
    loop do
        input = gets
        begin
            puts "> #{@calc.calculate(input.chomp)}" 
          rescue ZeroDivisionError => error
            puts error.message
          rescue InsufficientOperandsError => error
            puts error.message
        end
        if input.nil? || input.chomp == 'q' 
            puts "Bye Bye"
            exit
        end                       
    end
