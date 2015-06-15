module Blogit
  module Admin

    # Inherits from the application's controller instead of ActionController::Base
    class ApplicationController < ::ApplicationController
      
      helper Blogit::ApplicationHelper
      
      helper_method :blogit_conf
      
      private
      
      
      def self.blogit_conf
        Blogit.configuration
      end

      def blogit_conf
        self.class.blogit_conf
      end

      
      def current_user
        @current_user ||= User.find(session[:user_id])
      end
      
      alias_method :current_blogger, :current_user
            
      
      def blogit_authenticate
        return true if send(Blogit.configuration.authentication_method) 
        flash[:warn] = t("authentication_failed", scope: "blogit-admin.authentication")
        redirect_to blogit_admin_sign_in_url
      end
      
      def blogit_admin_sign_in_url
        new_session_url
      end

    end
    
  end
  
end