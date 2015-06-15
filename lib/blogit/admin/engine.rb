module Blogit
  module Admin
    class Engine < Rails::Engine
    
      isolate_namespace Blogit::Admin
    
      initializer "blogit-admin.extend_active_record" do

        if defined?(::ActiveRecord::Base)
          # ::ActiveRecord::Base.send(:include, Blogit::Blogs)
          # ::ActiveRecord::Base.send(:include, Validators)
        end
      
      end
      
    end
  end
end