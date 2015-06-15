module Blogit
  module Admin
    module Configuration
      
      extend ActiveSupport::Concern
      
      included do
        config_accessor(:authentication_method) { :blogger_signed_in? }
      end
      
    end
  end
end