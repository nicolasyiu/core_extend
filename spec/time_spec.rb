require 'core_extend'

describe Time do
  it 'last week' do
    last_str = Time.last_week_period
    current_str = Time.current_week_period
    p Time.now.to_s
    p last_str
    p current_str
    expect(last_str.length>0).to eq(true)
  end
end