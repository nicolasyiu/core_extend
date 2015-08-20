require 'core_extend'

describe Random do
  it 'string exec' do
    p "test my <%= 'hello'%>".code_exec
  end
end