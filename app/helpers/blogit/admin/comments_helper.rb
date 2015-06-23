module Blogit
  module Admin
    
    module CommentsHelper
    
      def comments_count_for_post(post)
        "0 comments"
      end
      
      def name_tag_for_comment(comment)
        comment_name = t(:wrote, scope: 'blogit.admin.comments', name: comment.name)
        if comment.website?
          link_to(comment_name, comment.website, name: comment.website, target: "_blank")
        else
          comment_name
        end
      end
      
    end
    
  end
end