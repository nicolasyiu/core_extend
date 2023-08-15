require 'core_extend'

describe Hash do
  it 'to_yaml' do
    h = {package: 'com.xxx.yyy', appName: '哈哈'}
    puts "\n\n"
    puts h
    puts h.to_yaml
  end
  it 'to_yaml2' do
    h = {:version => "2.0.2", :apkFileName => "com.miui.providers.userbook_1.0.1_2.apk", :isFrameworkApk => false, :usesFramework => {"ids" => [1]}, :sdkInfo => {"minSdkVersion" => "9", "targetSdkVersion" => "21"}, :packageInfo => {"forced-package-id" => "127"}, :versionInfo => {"versionCode" => "2", "versionName" => "1.0.1"}, :sharedLibrary => false, :unknownFiles => {"init.txt" => "8"}, :doNotCompress => ["resources.arsc"]}
    puts "\n\n"
    puts h
    puts h.to_yaml
  end

  it 'kv_join' do

    h = {:order => {"name" => "柳See测试。。。", "phone" => "1510000xxxx", "shipping_province" => "山东省", "shipping_city" => "枣庄市", "shipping_district" => "峄城区", "shipping_address" => "afsadfsd", "shipping_charge" => 9, "delivery_vendor" => "圆通", "pay_type" => "0", "comment" => "", "line_items_attributes" => {7174875524045 => {"product_id" => "69ec4fcb3450ebd81be117f1bd2df0f4", "product_prop_id" => "76b1b27af67021fe71001c9630056c7b", "quantity" => 1, "sale_price" => "169.0"}}}, :api_key => "dd432da4", :device_id => "20160602175425344_common"}
    puts "\n"+h.kv_join('=').flatten.join+"\n"
  end
end