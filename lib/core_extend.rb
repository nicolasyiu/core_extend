require 'core_extend/version'
require 'core_extend/float_module'

Dir.glob("#{File.dirname(__FILE__)}/core_extend/*.rb") { |f| require f }

module CoreExtend

end