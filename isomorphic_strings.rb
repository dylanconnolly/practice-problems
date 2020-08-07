s = "paper"
t = "title"

def is_isomorphic(s, t)
  s_chars = s.split('')
  t_chars = t.split('')

  hash = s_chars.reduce({}) do |mapped_hash, character|
    if mapped_hash[character] == nil && !(mapped_hash.values.include?(t_chars.first))
      mapped_hash[character] = t_chars.shift
    elsif mapped_hash[character] == t_chars.first
      t_chars.shift
    else
      return false
    end
    mapped_hash
  end

  letter_array = s_chars.map do |letter|
    hash[letter]
  end

  if letter_array.join('') == t
    true
  else
    false
  end
end

is_isomorphic(s, t)
