module RomanNumeralCalc
  class Symbols

    attr_reader :all

    def initialize
      base_symbols = {
        :I => 1,
        :V => 5,
        :X => 10,
        :L => 50,
        :C => 100,
        :D => 500,
        :M => 1000
      }

      @all = Set.new

      base_symbols.each do |symbol, value|
        @all << Symbol.new(symbol, value)
      end
    end
  end
end
