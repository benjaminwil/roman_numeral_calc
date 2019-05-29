require "test_helper"

module RomanNumeralCalc
  class OperatorTest < Minitest::Test

    def test_that_plus_operator_is_valid
      plus = Operator.new(' + ')
      assert plus.output
    end

    def test_that_multiple_operators_are_invalid
      multiple_operators = Operator.new(' - + ')
      assert_nil multiple_operators.output
    end

    def test_that_unknown_operators_are_invalid
      unknown_operator = Operator.new(' d ')
      assert_nil unknown_operator.output
    end

  end
end
