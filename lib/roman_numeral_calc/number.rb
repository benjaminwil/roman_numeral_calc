module RomanNumeralCalc
  class Number

    attr_reader :symbols

    def initialize(user_input)
      @input = user_input
      @symbols = symbols
    end

    def symbols
      {
        :I => 1,
        :V => 5,
        :X => 10,
        :L => 50
      }
    end

  end
end
