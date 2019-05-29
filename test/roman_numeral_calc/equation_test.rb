require "test_helper"

module RomanNumeralCalc
  class EquationTest < Minitest::Test

    def test_that_two_numbers_can_be_added
      operand1 = Operand.new('iv')
      operator = Operator.new(' + ')
      operand2 = Operand.new('vi')
      equation = Equation.new(operand1, operand2, operator)
      assert_equal 10, equation.result
    end

  end
end
