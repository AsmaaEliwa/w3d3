def range(start,end_num)
  return [] if end_num <start 
  arr = [start]
  arr + range(start + 1,end_num) - [end_num]

end

def itera_sum(arr)
  sum = 0
  arr.each do |num|
    sum += num
  end
  sum
end

def recur_sum(arr)
  return [] if arr.empty?
  return arr[0] if arr.length == 1
  arr[0] + recur_sum(arr[1..-1])
end

# p itera_sum([1, 2, 3])
# p recur_sum([1, 2, 3])
# p recur_sum([])

# p  range(1,5)

# first version
# def exp(b, n)
#  return 1  if n==0 
#  b * exp(b, n - 1)
# end
# p  exp(2, 0)
#  p  exp(2, 3)

# 2nd version
def exp(b, n)
  return 1  if n == 0 
  return b if n == 1
  if n.even?
    exp(b, n / 2) ** 2  
  else
    b * (exp(b, (n - 1) / 2) ** 2)
  end
end

#  p  exp(2, 0)
#  p  exp(2, 1)

#  p  exp(2, 3)
#  p  exp(2, 4)


def deep_dup(arr,new_arr=[])
  return [] if arr.empty?

  arr.each do |ele|
    if ele.is_a?Array
      deep_dup(ele,new_arr)
    else
      new_arr<<ele
    end
  end

  new_arr
end
# arr1=[1,2,3]
# arr4=deep_dup(arr1)

# p arr1.object_id
# p arr4.object_id

# p arr4
# arr4[1]=8
# p arr4
# p arr1
# p arr1

# arr2=[1,2,[3]]
# p deep_dup(arr2)
# arr3=deep_dup(arr2)
# p arr3
# arr3[2]=[0]
# p arr3
# p arr2

# arr3=[]
# p deep_dup(arr3)

def fib(n)
  return [0] if n == 1
  return [0, 1] if n == 2
  arr = fib(n-1)
  arr << arr[-1] + arr[-2]
end

# p fib(4)
# p fib(10)
def bsearch_helper(arr, target, left_right)
end


def bsearch(arr, target)
  if arr.length == 1 && arr[0] != target
    return nil
  end

  if arr.length.even?
    mid_idx = arr.length / 2 - 1
  else
    mid_idx = arr.length / 2
  end

  left_side = arr[0..mid_idx]
  right_side = arr[mid_idx..-1]
  # new_arr = left_side + right_side

  mid = arr[mid_idx]
  result = target <=> mid

  if result == 0
    return mid_idx
    # return arr[0..mid_idx].length + mid_idx
  elsif result == -1
    bsearch(left_side, target)
  else
    bsearch(right_side, target)
  end

end

p bsearch([1, 2, 3], 1) # => 0
p bsearch([2, 3, 4, 5], 3) # => 1
p bsearch([1, 2, 3, 4], 3) # => 1
p bsearch([2, 4, 6, 8, 10], 6) # => 2
p bsearch([1, 3, 4, 5, 9], 5) # => 3
# p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
# p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
# p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil