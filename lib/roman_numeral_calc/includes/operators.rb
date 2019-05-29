module RomanNumeralCalc
  module Operators

    def operators
      {
        :add => /(\+)/,
        :divide => /(\/)/,
        :multiply => /(\*|x)/,
        :subtract => /(\-)/
      }
    end

  end
end
