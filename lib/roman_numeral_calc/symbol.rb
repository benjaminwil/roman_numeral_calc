module RomanNumeralCalc
  class Symbol
    
    attr_reader :symbol, :value
    
    def initialize(symbol, value)
       @symbol = symbol
       @value = value
    end
  end
end
