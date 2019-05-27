require "test_helper"

module RomanNumeralCalc
  class ParserTest < Minitest::Test

    def test_that_a_simple_calculation_can_be_parsed
      equation = Parser.new("i + iii")
      assert equation, 4
    end

  end
end
