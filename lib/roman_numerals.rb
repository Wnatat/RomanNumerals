class RomanNumerals

  SYMBOLS = {
    1 => "I",
    4 => "IV",
    5 => "V",
    9 => "IX",
    10 => "X",
    49 => "IC",
    50 => "C"
  }.freeze

  def convert(number)
    numeral = ""
    
    symbol_index = to_numeral(number)

    numeral += append(symbol_index, number)

    remainer = number % symbol_index

    if remainer > 0
      numeral += convert(remainer)
    end

    numeral
  end

  private

  def to_numeral(number)
    SYMBOLS.keys.sort.reverse!.bsearch { |x| x <= number } || 1
  end

  def append(symbol_index, number)
    SYMBOLS[symbol_index] * (number / symbol_index)
  end
end
