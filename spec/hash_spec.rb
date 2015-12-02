require 'core_extend'

describe Hash do
  it 'to_yaml' do
    h = {package: 'com.xxx.yyy', appName: '哈哈'}
    puts h.to_yaml
  end
end