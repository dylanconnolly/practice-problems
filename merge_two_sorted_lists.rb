require 'pry'

def merge_two_lists(l1, l2)
  

  if l1 == nil
    return l2
  elsif l2 == nil
    return l1
  end

  if l1.val < l2.val
    l1.next = merge_two_lists(l1.next, l2)
    return l1
  else
    l2.next = merge_two_lists(l1, l2.next)
    return l2
  end
end

class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end

list1 = ListNode.new(1, ListNode.new(2, ListNode.new(4)))
list2 = ListNode.new(1, ListNode.new(3, ListNode.new(4)))

p merge_two_lists(list1, list2)
