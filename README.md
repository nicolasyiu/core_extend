# CoreExtend

gem主要包括数组的遍历、浮点数的小数点精度的确定、金钱显示、随机字符串等常用操作

## Installation
Add this line to `config/application.rb`

```ruby
require 'core_extend'
```

Add this line to your application's Gemfile:

```ruby
gem 'core_extend'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install core_extend

## String 

### urlencode
```ruby
'name=小明&sex=男'.urlencode
#=> "name%3D%E5%B0%8F%E6%98%8E%26sex%3D%E7%94%B7"
```

## Array

### every
```ruby
(1..20).to_a.every(3) { |a, b, c|
  p "#{a},#{b},#{c}"
}
#=>"1,2,3"
#=>"4,5,6"
#=>"7,8,9"
#=>"10,11,12"
#=>"13,14,15"
#=>"16,17,18"
#=>"19,20,"
```

## Float

###decimal_point
```ruby
3.2268.decimal_point(2)
#=>3.23
```
###to_money
```ruby
123456789.456.to_money              #=>"123,456,789.46"
32005487.45.to_money('text')        #=>"3200.55万"
2332005487.45.to_money('text',4)    #=>"23.3201亿"
2332005487.45.to_money('text',0)    #=>"23亿"
2332005487.45.to_money('num',2)     #=>"2,332,005,487.45"
2332005487.45.to_money('num',0)     #=>"2,332,005,487"
1.to_money                          #=>"1.0"
```
### to_size
```ruby
45200455.to_size                    #=>"45.2 MB"
```

## Random

###rand_str
```ruby
str = Random.rand_str(32)
p str
#=>"tdb1hruwxd8p0z5qtdl7pvhva5uxbru9"
```

## Hash
###to_yaml
```ruby
h = {package: 'com.xxx.yyy', appName: '哈哈'}
puts h.to_yaml
#=>.--- !ruby/object:Hash
#=>:appName: 哈哈
#=>:package: com.xxx.yyy
```
###kv_join
```ruby
h = {:order => {"name" => "柳溪测试。。。", "phone" => "15101043867", "shipping_province" => "山东省", "shipping_city" => "枣庄市", "shipping_district" => "峄城区", "shipping_address" => "afsadfsd", "shipping_charge" => 9, "delivery_vendor" => "圆通", "pay_type" => "0", "comment" => "", "line_items_attributes" => {7174875524045 => {"product_id" => "69ec4fcb3450ebd81be117f1bd2df0f4", "product_prop_id" => "76b1b27af67021fe71001c9630056c7b", "quantity" => 1, "sale_price" => "169.0"}}}, :api_key => "dd432da4", :device_id => "20160602175425344_common"}
h.kv_join('=)
#=>name=柳溪测试。。。phone=15101043867shipping_province=山东省shipping_city=枣庄市shipping_district=峄城区shipping_address=afsadfsdshipping_charge=9delivery_vendor=圆通pay_type=0comment=product_id=69ec4fcb3450ebd81be117f1bd2df0f4product_prop_id=76b1b27af67021fe71001c9630056c7bquantity=1sale_price=169.0api_key=dd432da4device_id=20160602175425344_common
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/core_extend/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
