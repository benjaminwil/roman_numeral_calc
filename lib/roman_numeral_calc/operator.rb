require "roman_numeral_calc/includes/operators"

module RomanNumeralCalc
  class Operator
    
    include ::RomanNumeralCalc::Operators
    
    attr_reader :input, :valid

    def initialize(user_input)
      @input = user_input
      valid_operator? ? @valid = true : @valid = false
    end

    private

    def valid_operator?
      check_for_operators.select { |state| state == true }.count == 1
    end

    def check_for_operators
     operators.map do |operator, regex|
       @input.match?(regex)
     end
    end

  end
end
