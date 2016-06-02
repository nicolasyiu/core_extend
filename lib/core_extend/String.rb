class String

  def urlencode
    self.dup.force_encoding('ASCII-8BIT').gsub(/[^a-zA-Z0-9_\-.\*]/) do
      sprintf('%%%02X', $&.unpack('C')[0])
    end
  end
end