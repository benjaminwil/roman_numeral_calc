module RomanNumeralCalc
  class Number

    attr_reader :symbols

    def initialize(user_input)
      @input = user_input
      @symbols = symbols
    end

    def evaluate
      numeric_values.sum
    end

    private

    def numeric_values
      symbol_values.map.with_index do |value, i|
        next_value = symbol_values[i+1]
        if next_value
          value < next_value  ? -(value) : value
        else
          value
        end
      end
    end

    def symbols
      {
        :I => 1,
        :V => 5,
        :X => 10,
        :L => 50
      }
    end

    def symbol_values
      @input.chars.map { |char| @symbols[char.upcase.to_sym] }
    end
  end
end
