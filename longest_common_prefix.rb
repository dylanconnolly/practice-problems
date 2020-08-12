require 'pry'

def longest_common_prefix(strs)
  # split array into each word
  common = []
  # take first letter of first word

  index = strs[0].first

  strs.each do |word|
    if word.split('').shift == index
    end
  end
  # compare against first letter of other words
  # if match, move to second letter
  # as soon as there isn't a match, break and return what matched
end

strings = ["flower","flow","flight"]

longest_common_prefix(strings)

binding.pry
