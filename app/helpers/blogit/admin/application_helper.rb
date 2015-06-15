module Blogit
  module Admin
    module ApplicationHelper
      
      def field(options = {}, &block)
        yield
      end
      
      def actions(options = {}, &block)
        yield
      end
      
    end
  end
end
