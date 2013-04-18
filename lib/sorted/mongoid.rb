require "sorted/mongoid/version"

module Sorted
  module Mongoid
  end
end

if defined?(::Rails::Railtie)
  require 'sorted/mongoid/railtie'
end