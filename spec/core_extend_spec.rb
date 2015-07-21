require 'core_extend'

describe Array do
  it 'every' do
    (1..20).to_a.every(3) { |a, b, c|
      p "#{a},#{b},#{c}"
    }
  end
end