class String

  #执行string中的代码
  def code_exec
    b = binding()
    template = ERB.new(self)
    template.result(b)
  end
end