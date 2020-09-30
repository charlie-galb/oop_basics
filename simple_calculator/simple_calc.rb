class Calculator

  def add(num1, num2)
    answer = num1 + num2
    Printer.new.print_answer(answer)
  end

  def subtract(num1, num2)
    answer =  num1 - num2
    Printer.new.print_answer(answer)
  end

end

class Printer

  def print_answer(answer)
    puts "The answer is: #{answer}"
  end

end

sum = Calculator.new
sum.subtract(3, 7)
