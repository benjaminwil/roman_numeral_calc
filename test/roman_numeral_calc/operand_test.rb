require "test_helper"

module RomanNumeralCalc
  class OperandTest < Minitest::Test

    def test_that_input_can_be_parsed
      number = Operand.new('xlix').output
      assert_equal 49, number
    end

  end
end
