class Hash
  # def to_yaml(opts = {})
  #   YAML::quick_emit(object_id, opts) do |out|
  #     out.map(taguri, to_yaml_style) do |map|
  #       sort.each do |k, v| # "sort" added
  #         map.add(k, v)
  #       end
  #     end
  #   end
  # end

  def kv_join(s)
    self.map do |k, v|
      if v.is_a?(Hash)
        # When upload a file, make tempfile and other params out of hash.
        v.key?('tempfile') ? "#{k}=#{v['filename']}" : v.kv_join(s)
      else
        "#{k}#{s}#{v}"
      end
    end
  end
end