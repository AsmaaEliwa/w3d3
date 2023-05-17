  def range(start,end_num)
    return []  if end_num <start 
    arr=[start]
    arr+range(start+1,end_num)- [end_num]

  end



# p  range(1,5)
