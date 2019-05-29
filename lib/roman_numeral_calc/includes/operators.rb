module RomanNumeralCalc
  module Operators

    def operators
      {
        :+ => /(\+)/,
        :/ => /(\/)/,
        :* => /(\*|x)/,
        :- => /(\-)/
      }
    end

  end
end
