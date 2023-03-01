class SimpleCalculator
  def self.calculate(num1, num2, operation)
    begin
      case operation
      when "+"
        result = num1 + num2
      when "-"
        result = num1 - num2
      when "*"
        result = num1 * num2
      when "/"
        result = num1 / num2
      else
        raise "Invalid operation. Only +, -, *, and / are allowed."
      end

      "#{num1} #{operation} #{num2} = #{result}"
    rescue ZeroDivisionError
      "Cannot divide by zero."
    end
  end
end

puts SimpleCalculator.calculate(16, 51, "+")
# => "16 + 51 = 67"

puts SimpleCalculator.calculate(32, 6, "*")
# => "32 * 6 = 192"

puts SimpleCalculator.calculate(512, 4, "/")
# => "512 / 4 = 128"

puts SimpleCalculator.calculate(10, 0, "/")
# => "Cannot divide by zero."

puts SimpleCalculator.calculate(5, 3, "%")
# => "Invalid operation. Only +, -, *, and / are allowed."
