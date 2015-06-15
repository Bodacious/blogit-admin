require "blogit/admin/engine"
require "blogit/admin/configuration"

require "blogit/configuration"

Blogit::Configuration.class_eval do
  
  include Blogit::Admin::Configuration
  
end