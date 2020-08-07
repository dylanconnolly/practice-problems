require 'pry'

def roman_to_int(string)
  # have a counter
  counter = 0

  # create a hash of values for each numeral character
  values = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000
  }

  # split string into array to iterate over
  length = string.length
  chars = string.split('')


  chars.each_with_index do |char, index|
    # evaluate if the next character in line is larger, if so subtract current char instead
    unless index == length - 1
      if values[char] < values[chars[index+1]]
        counter -= values[char]
        next
      else
        counter += values[char]
        next
      end
    end
    counter += values[char]
  end

  return counter
end

inputs = ["XVI","IV","IX","LVIII","MCMXCIV"]

inputs.each do |input|
  p input
  p roman_to_int(input)
end
