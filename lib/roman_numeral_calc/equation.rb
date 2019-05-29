module RomanNumeralCalc
  class Equation

    attr_reader :result

    def initialize(operand1, operand2, operator)
      @input = {
        :operand1 => operand1,
        :operand2 => operand2,
        :operator => operator
      }
      @output = evaluate
    end

    private

    def evaluate
      operand1 = @input[:operand1]
      operator = @input[:operator]
      operand2 = @input[:operand2]

      case operator
      when :+
        operand1 + operand2
      when :/
        operand1 / operand2
      when :*
        operand1 * operand2
      when :-
        operand1 - operand2
      else
        "error"
      end
    end
  end
end
