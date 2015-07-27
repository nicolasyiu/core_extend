require 'core_extend'

describe Random do
  it 'rand_str' do
    str = Random.rand_str(32)
    p str
    expect(str.length).to eq(32)
  end
end