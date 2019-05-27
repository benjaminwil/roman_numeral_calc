module RomanNumeralCalc
  class Parser

    def initialize(input)
      characters = input.gsub(/\s+/, '').chars
    end

    def parse_numerals(characters)
      operator = /\+/
      characters.partition(operator)
    end
  end
end
