module Blogit
  module Admin



    # Inherits from the application's controller instead of ActionController::Base
    class ApplicationController < Blogit.configuration.admin_application_controller_base_class.constantize
      
      def self.blogit_conf
        Blogit.configuration
      end

      def blogit_conf
        self.class.blogit_conf
      end
      
      layout blogit_conf.admin_layout
      helper Blogit::ApplicationHelper, Blogit::Admin::CommentsHelper,
        Blogit::Admin::PostsHelper, Blogit::Admin::LayoutHelper

      
      helper_method :blogit_conf, :current_blogger
      
      
      private
            
      
      def blogit_authenticate
        return true if send(Blogit.configuration.authentication_method) 
        flash[:warn] = t("authentication_failed", scope: "blogit-admin.authentication")
        redirect_to blogit_admin_sign_in_url
      end
      
      def blogit_admin_sign_in_url
        new_session_url
      end

      def current_blogger
        if defined?(super)
          super
        else
          raise NotImplementedError, 
            "Please define :current_blogger in your ApplicationController.\
              Blogit::Admin needs this to determine who's signed in."
        end
      end
    end
    
  end
  
end