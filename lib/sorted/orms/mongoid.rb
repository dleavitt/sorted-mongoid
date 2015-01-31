require 'mongoid'
require 'sorted'
require 'active_support/concern'
  
module Sorted
  module Orms
    module Mongoid
      extend ActiveSupport::Concern
      included do
        def self.sorted(sort, default_order = nil)
          uri = ::Sorted::URIQuery.parse(sort)
          sql = ::Sorted::SQLQuery.parse(default_order)
          set = uri + (sql - uri)
          order_by ::Sorted::JSONQuery.encode(set)
        end
      end
    end
  end
end
