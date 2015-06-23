module Blogit
  module Admin
    module ModelExtensions
      module Comment

        extend ActiveSupport::Concern
  
        module ClassMethods

          def latest
            order('created_at DESC').limit(10)
          end
    
        end
        
      end
    end
  end
end
