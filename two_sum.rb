# Given an array of integers, return indices of the two numbers such that they add up to a specific target.
#
# You may assume that each input would have exactly one solution, and you may not use the same element twice.


def two_sum(nums, target)
  hash = Hash.new
  nums.each_with_index do |num, index|
    findable = target - num
    if hash[findable]
      return [nums.index(findable), index]
    end
    hash[num] = findable
  end
  require 'pry'; binding.pry
end


#   nums.each_with_index do |num, index|
#     if num > target
#       next
#     else
#       findable = target - num
#       require 'pry'; binding.pry
#       if nums.index(findable)
#         return [index, nums.index(findable)]
#       end
#     end
#   end
#
# end




num_array = [3,2,4]
tar = 6

two_sum(num_array, tar)
require 'pry'; binding.pry
