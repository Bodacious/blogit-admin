module Blogit
  
  module Admin
    
    module PostsHelper
      
      def post_by_this_blogger?(post, blogger)
        post.blogger == blogger
      end
      
    end
    
  end
  
end