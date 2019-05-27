require "test_helper"

module RomanNumeralCalc
  class SymbolsTest < Minitest::Test

    def test_that_there_are_seven_unique_roman_numeral_symbols
      symbols = Symbols.new
      all = symbols.all.map { |symbol, value| symbol }
      assert all.uniq.count, 7
    end

    def test_that_each_symbol_has_the_correct_value
    end
  end
end

