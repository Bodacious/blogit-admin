Blogit::Post.class_eval do
  include Blogit::Admin::ModelExtensions::Post
end

Blogit::Comment.class_eval do
  include Blogit::Admin::ModelExtensions::Comment
end