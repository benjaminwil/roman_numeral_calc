require "test_helper"

module RomanNumeralCalc
  class ParserTest < Minitest::Test

    def test_that_a_simple_calculation_can_be_parsed
      result = Parser.new("i + cdxcix").result
      assert_equal 500, result
    end

  end
end
