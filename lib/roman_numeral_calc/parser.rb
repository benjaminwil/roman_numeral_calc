module RomanNumeralCalc
  class Parser

    attr_reader :result

    def initialize(input)
      clean_input = input.gsub(/\s+/, '')
      equation = parse_equation(clean_input)
      @result = evaluate(equation)
    end

    def evaluate(equation)
      operand1, operator, operand2 = equation
      case operator
      when "+"
        operand1 + operand2
      end
    end

    def parse_equation(clean_input)
      # Provisional "+" operator, as that's all we need to worry about for now.
      operator = /\+/
      equation = clean_input.partition(operator)
      equation.map! do |num|
        values = parse_operand(num)
      end
    end

    def parse_operand(operand)
      if valid_numeral?(operand)
        characters = operand.chars.map { |char| symbol = char.upcase.to_sym }
        evaluate_numeral(characters)
      else
        # Means this is an operator not an operand. Should handle this in a
        # nicer way -- definitely not in this method.
        operand
      end
    end

    def evaluate_numeral(characters)
      count = 0
      characters.each_slice(2).to_a do |numeral|
        if numeral.count == 2
          count += handle_pairs
        else
          count += handle_single
        end
      end
      return count
    end

    def symbol(symbol)
      symbols.detect { |sym| sym.symbol == symbol }
    end

    def symbols
      Symbols.new.all
    end

    # NOT IMPLEMENTED
    def handle_pairs
      # handle a value like "XI" or a *one before* value like "XL"
      # returns the value. In the case of "XI" => 11
    end

    def handle_single
      # handles a value like "V" or "C".
      # returns the value. In the case of "V" => 5
    end

    def valid_numeral?(numeral)
      # Provisional, since we only expect the "+" operator for the moment.
      # I'll need to make this a real Roman numeral validator later.
      !numeral.match?(/\+/)
    end
  end
end
