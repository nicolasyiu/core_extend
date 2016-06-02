require 'core_extend'

describe String do
  it 'url encode' do
    str = 'name=小明&sex=男'.urlencode
    p str
    expect(str.length>0).to eq(true)
  end
end