require "blogit/admin/engine"
require "blogit/admin/configuration"

require "blogit/configuration"

require "blogit/admin/model_extensions/post"

Blogit::Configuration.class_eval do
  
  include Blogit::Admin::Configuration
  
end