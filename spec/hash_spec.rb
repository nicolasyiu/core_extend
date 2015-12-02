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
end