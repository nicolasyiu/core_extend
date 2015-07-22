class Float

  #保留小数点位数
  def decimal_point(point=2)
    sprintf("%0.#{point}f", self).to_f
  end

  #显示成钱数
  #===Parameters
  # +type+ enum 'num','text'
  #===Returns
  # +string+
  def to_money(type='num',point=2)
    str = decimal_point(point).to_s
    int_str = str.split('.')[0]
    point_str = str.split('.')[1]

    if type=='text'
      return "#{int_str}.#{point_str}" if int_str.to_i<10000

      return "#{(int_str.to_i/10000.0).decimal_point(point)}万" if int_str.to_i<100000000

      return "#{(int_str.to_i/100000000.0).decimal_point(point)}亿"
    end

    return "#{int_str}.#{point_str}" if int_str.length<3
    index = -4
    while index.abs < int_str.length+1
      int_str.insert(index, ',')
      index -=4
    end
    "#{int_str}.#{point_str}"
  end

end