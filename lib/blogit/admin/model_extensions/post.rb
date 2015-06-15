module Blogit
  module Admin
    module ModelExtensions
      module Post

        include ActiveSupport::Concern
  
        module ClassMethods

          def for_admin_index(page_no)
            page(page_no).per(10)
          end
    
        end
        
      end
    end
  end
end
