class Array

  def every(num=1)
    index = 0
    while self[index]
      yield(*(1..num).to_a.inject([]) { |acc, n| acc<<self[index+n-1] })
      index+=num
    end
  end

end