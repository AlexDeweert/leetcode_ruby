#Leet code "2. Add Two Numbers" medium problem.

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}

# You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.

# You may assume the two numbers do not contain any leading zero, except the number 0 itself.

# Example:

# Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
# Output: 7 -> 0 -> 8
# Explanation: 342 + 465 = 807.

def add_two_numbers(l1, l2)
    @result = []
    @add = aux("",l1) + aux("",l2)
    @add.to_s.each_char{ |x| @result.insert(0, x.to_i)}
    @result
end

def aux(acc,xs)
    if xs.nil?
        acc.to_i
    else
        aux(xs.val.to_s+acc, xs.next)
    end
end
