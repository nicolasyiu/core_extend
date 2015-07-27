class Random

  #随机长度的字符串
  def self.rand_str(length)
    length.times.inject('') { |acc, i| acc+=(('a'..'z').to_a+('0'..'9').to_a)[(i+Random.rand(1000))%36]; acc }
  end
end