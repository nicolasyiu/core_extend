class Time

  #上一周的时间字符串
  def self.last_week_period
    t = Time.now
    "#{t.strftime('%Y')}-#{Time.at(t.to_i - (t.wday-1+7)*24*60*60).strftime("%m%d")}-#{Time.at(t.to_i - (t.wday == 0 ? 7 : t.wday)*24*60*60).strftime("%m%d")}"
  end

  #本周的时间字符串
  def self.current_week_period
    t = Time.now
    "#{t.strftime('%Y')}-#{Time.at(t.to_i - (t.wday-1)*24*60*60).strftime("%m%d")}-#{Time.at(t.to_i + (t.wday == 0 ? 0 : 7 - t.wday)*24*60*60).strftime("%m%d")}"
  end

end