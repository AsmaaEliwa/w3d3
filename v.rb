  def range(start,end_num)
    return []  if end_num <start 
    arr=[start]
    arr+range(start+1,end_num)- [end_num]

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
