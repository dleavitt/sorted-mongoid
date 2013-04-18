require 'sorted'

module Sorted
  module Mongoid
    class Railtie < ::Rails::Railtie
      initializer "sorted-mongoid.configure" do |app|
        require 'sorted/orms/mongoid'
        ::Mongoid::Criteria.send :include, Sorted::Orms::Mongoid
        ::Mongoid::Document.send :include, Sorted::Orms::Mongoid
      end
    end
  end
end
