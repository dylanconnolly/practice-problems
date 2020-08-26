require 'pry'

def is_valid(s)
  chars = s.split('')

  reference = {
    ")" => "(",
    "]" => "[",
    "}" => "{"
  }

  open = []

  chars.each do |character|
    if reference[character]
      if open.last == reference[character]
        open.pop
      else
        return false
      end
    else
      open << character
    end
  end

  if open.length == 0
    return true
  else
    return false
  end
end

input = "()[]{}"

input2 = "(((({[[{}]]}))"

p is_valid(input)
p is_valid(input2)
