module Blogit
  module Admin
    module Configuration
      
      extend ActiveSupport::Concern
      
      included do
        config_accessor(:admin_layout) { "blogit_admin" }
        
        config_accessor(:authentication_method) { :blogger_signed_in? }
        
        config_accessor(:author_edits_only) { false }
        
        config_accessor(:admin_form_builder_class) {
          "Blogit::Admin::FormsHelper::FormBuilder" }
        
        config_accessor(:admin_application_controller_base_class) {
          "::ApplicationController" }
          
        config_accessor(:admin_wysiwyg_editor) { :epic_editor }
      end
      
    end
  end
end