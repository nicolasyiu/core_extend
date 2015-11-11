module CoreExtend
  module FloatModule

    #保留小数点位数
    def decimal_point(point=2)
      return sprintf("%0.#{point}f", self).to_f if point>0
      self.to_i
    end

    #显示成钱数
    #===Parameters
    # +type+ enum 'num','text'
    #===Returns
    # +string+
    def to_money(type='num', point=2)
      str = decimal_point(point).to_s
      int_str = str.split('.')[0]
      point_str = str.split('.')[1]

      return_value = ->() {
        return "#{int_str}.#{point_str}" if point>0
        int_str
      }

      if type=='text'
        return return_value.call if int_str.to_i<10000

        return "#{(int_str.to_i/10000.0).decimal_point(point)}万" if int_str.to_i<100000000

        return "#{(int_str.to_i/100000000.0).decimal_point(point)}亿"
      end

      return return_value.call if int_str.length<3
      index = -4
      while index.abs < int_str.length+1
        int_str.insert(index, ',')
        index -=4
      end
      return_value.call
    end

    def to_size(point=2)
      str = decimal_point(point).to_s
      int_str = str.split('.')[0]
      point_str = str.split('.')[1]

      return_value = ->() {
        return "#{int_str}.#{point_str} bytes" if point>0
        int_str
      }

      return return_value.call if int_str.to_i<1000

      return "#{(int_str.to_i/1000.0).decimal_point(point)} KB" if int_str.to_i<1000*1000

      return "#{(int_str.to_i/(1000*1000.0)).decimal_point(point)} MB" if int_str.to_i<(1000*1000*1000)


      return return_value.call if int_str.length<3
      index = -4
      while index.abs < int_str.length+1
        int_str.insert(index, ',')
        index -=4
      end
      return_value.call
    end

  end
end