require 'pry'

def find_unique_delivery_id(delivery_ids)
  counter = Hash.new(0)

  delivery_ids.reduce(counter) do |counter, id|
    counter[id] += 1
    counter
  end

  counter.each do |id, times_seen|
    return id if times_seen == 1
  end
end

# optimal solution using XOR

# We XOR all the integers in the array. We start with a variable unique_delivery_id set to 00. Every time we XOR with a new ID, it will change the bits. When we XOR with the same ID again, it will cancel out the earlier change.

# In the end, we'll be left with the ID that appeared once!
def find_unique_delivery_id(delivery_ids)

  unique_delivery_id = 0

  delivery_ids.each do |delivery_id|
    unique_delivery_id ^= delivery_id
  end

  unique_delivery_id
end




# not O(n) time
# def find_unique_delivery_id(delivery_ids)
#
#   # Find the one unique ID in the array.
#   first_id = delivery_ids.shift
#
#   if !(delivery_ids.include?(first_id))
#     p first_id
#     return first_id
#   else
#     delivery_ids.delete(first_id)
#     find_unique_delivery_id(delivery_ids)
#   end
# end


















# Tests

def run_tests
  desc = 'one drone'
  actual = find_unique_delivery_id([1])
  expected = 1
  assert_equal(actual, expected, desc)

  desc = 'unique id comes first'
  actual = find_unique_delivery_id([1, 2, 2])
  expected = 1
  assert_equal(actual, expected, desc)

  desc = 'unique id comes last'
  actual = find_unique_delivery_id([3, 3, 2, 2, 1])
  expected = 1
  assert_equal(actual, expected, desc)

  desc = 'unique id in middle'
  actual = find_unique_delivery_id([3, 2, 1, 2, 3])
  expected = 1
  assert_equal(actual, expected, desc)

  desc = 'many drones'
  actual = find_unique_delivery_id([2, 5, 4, 8, 6, 3, 1, 4, 2, 3, 6, 5, 1])
  expected = 8
  assert_equal(actual, expected, desc)
end

def assert_equal(a, b, desc)
  puts "#{desc} ... #{a == b ? 'PASS' : "FAIL: #{a.inspect} != #{b.inspect}"}"
end

run_tests
