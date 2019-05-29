require "roman_numeral_calc/includes/operators"

module RomanNumeralCalc
  class Operator
    
    include ::RomanNumeralCalc::Operators
    
    def initialize(user_input)
      @input = user_input
    end

  end
end
