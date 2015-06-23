require "blogit/admin/engine"
require "blogit/admin/configuration"

require "blogit/configuration"

require "blogit/admin/model_extensions/post"
require "blogit/admin/model_extensions/comment"

require "epic-editor-rails"

Blogit::Configuration.class_eval do
  
  include Blogit::Admin::Configuration
  
end