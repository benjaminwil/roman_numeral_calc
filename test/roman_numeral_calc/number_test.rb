require "test_helper"

module RomanNumeralCalc
  class NumberTest < Minitest::Test

    def test_that_input_can_be_parsed
      number = Number.new('xlix').evaluate
      assert_equal 49, number
    end

  end
end
